
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/models/mysql.dart';
import 'package:flutter_crud_1/provider/users.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import 'package:network_info_plus/network_info_plus.dart';


class UserRegistro extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _UserRegistro();
}

class _UserRegistro extends State<UserRegistro> {
  final info = NetworkInfo();
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  final _formKey = GlobalKey<FormState>();
  //UserRegistro({Key? key}) : super(key: key);
  String nome = '';
  var sexo = 'Masculino';
  var endereco = '';
  var codigo = '';
  var _groupValue = 0;
  var caminho = '';
  String UId = '';
  DateTime data_nascimento = DateTime.now();
  int _value = 1;

  var db = Mysql();

  @override
  Widget build(BuildContext context){
    return MultiProvider(
        key: _formKey,
        providers: [
          ChangeNotifierProvider(create: (ctx) => Users(),),
        ],
        child: FutureBuilder(
          future: _fbApp,
          builder:(context, snapshot) {
            if (snapshot.hasError) {
              print('You have an error! ${snapshot.error.toString()}');
              return Text('Something went wrong!');
            } else if (snapshot.hasData) {
                return Scaffold(

                  appBar: AppBar(
                    title: Text('Dados Sóciodemográficos'),
                    centerTitle: true,
                    backgroundColor: Colors.cyan,
                  ),
                  body: Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: ListView(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Nome completo'),
                            onChanged: (value) {
                              nome = value;
                            },
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Digite algo';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: 'Código de registro (nº de inscrição no SIVEP)'),
                            onChanged: (value){
                              codigo = value;
                            },
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Text('Sexo'),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Radio(
                                              value: 1,
                                              groupValue: _value,
                                              onChanged: (value) {
                                                setState(() {
                                                  sexo = 'Masculino';
                                                  _value = int.parse(value.toString());
                                                });

                                              },


                                            ),
                                            Expanded(
                                                child: Text(
                                                  'Masculino', maxLines: 2,))
                                          ],
                                        )
                                    ),
                                    Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [
                                            Radio(value: 0,
                                              groupValue: _value,
                                              onChanged: (value) {
                                              setState(() {
                                                sexo = 'Feminino';
                                                _value = int.parse(value.toString());
                                              });
                                              },),
                                            Expanded(
                                                child: Text('Feminino', maxLines: 2,))
                                          ],
                                        )
                                    ),
                                  ],
                                ),
                              ],

                            ),
                          ),
                          Container(
                            child: Text('Data de nascimento'),
                          ),
                          Container(
                            height: 200,
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.date,
                              initialDateTime: DateTime(1980, 1, 1),
                              onDateTimeChanged: (DateTime newDateTime) {
                                data_nascimento = newDateTime;
                              },
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Endereço'),
                            onChanged: (value){
                              endereco = value;
                            },
                          ),
                          ElevatedButton.icon(

                              /*onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Sending Data to Cloud Firestore'),
                                    ),);
                                  usuario.add({'nome': nome}).then((value) =>
                                      print('User added')).catchError((error) =>
                                      print('Falied to add user: $error'));
                                  Navigator.of(context).pushNamed(
                                    AppRoutes.USER_RESIDENCIA,);
                                }
                              }*/
                              onPressed: () async{
                                /*await db.getConnection().then((value) {
                                    value.query('insert into malaria.usuario (codigo, nome, data_nascimento, endereco, sexo) values (?, ?, ?, ?, ?)',
                                        [codigo, nome, data_nascimento.toUtc(), endereco, sexo]);
                                  });*/

                                  await http.post(Uri.parse("http://10.0.0.47/malaria/addRegistro.php"), body: {
                                    "codigo": codigo,
                                    "nome": nome,
                                    "data_nascimento": data_nascimento.toUtc().toString(),
                                    "endereco": endereco,
                                    "sexo": sexo,
                                  });
                                  info.getWifiIP().then((value) => print(value));
                                  //Ipify.ipv4().then((value) => print(value));

                                  /*usuario.add({
                                  'nome': nome,
                                  'codigo': codigo,
                                  'sexo': sexo,
                                  'data_nascimento': data_nascimento,
                                  'endereco': endereco,
                                },
                                );*/
                                //Navigator.pushNamed(context, AppRoutes.USER_RESIDENCIA, arguments: {"codigo": codigo});
                                Navigator.of(context).pushNamed(
                                  AppRoutes.USER_RESIDENCIA, arguments: {"codigo": codigo, "UId": UId});
                              }, //AppRoutes.USER_RESIDENCIA
                              icon: Icon(Icons.arrow_forward),
                              label: Text('Próximo',),
                              style: ElevatedButton.styleFrom(primary: Colors.cyan)
                          ),
                        ],
                      ),
                    ),
                  ),
                );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
      },



    ),
    );
}
}

