import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/models/mysql.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

Future<void> addSQLData(String resposta_1, String resposta_2, String data, String usuario) async {
  var db = Mysql();
  return await db.getConnection().then((result){
    result.query('insert into malaria.user_cura (resposta_1, resposta_2, data, usuario) values (?, ?, ?, ?)', [resposta_1, resposta_2, data, usuario]);
  });
}

class UserCura extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _UserCura();
}

class _UserCura extends State<UserCura>{
  String retorno = '';
  String informado = '';
  DateTime data = DateTime.now();
  int _value = 1;
  int _value1 = 1;
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientações Terapêuticas'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 0, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('O dia para o seu retorno foi previamente agendado para a realização das lâminas de controle de cura?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //height: 5,
                      fontSize: 22,
                      color: Colors.black54,
                    ), textAlign: TextAlign.justify,
                ),
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
                                  onChanged: (value){
                                    setState(() {
                                      retorno = 'Sim';
                                      _value = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _value,
                                  onChanged: (value){
                                    setState(() {
                                      retorno = 'Não';
                                      _value = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(5)),
              Container(
                child: Text('Data', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black54)),
              ),
              //Padding(padding: EdgeInsets.all(5)),
              Container(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime(1980, 1, 1),
                  onDateTimeChanged: (DateTime newDateTime){
                      data = newDateTime;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Você foi informado por que é feito esse controle de verificação de cura?',
                    style: TextStyle(fontWeight: FontWeight.bold,
                      //height: 5,
                      fontSize: 22,
                      color: Colors.black54,
                    ), textAlign: TextAlign.justify,
                ),
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
                                  groupValue: _value1,
                                  onChanged: (value){
                                    setState(() {
                                      informado = 'Sim';
                                      _value1 = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _value1,
                                  onChanged: (value){
                                    setState(() {
                                      informado = 'Não';
                                      _value1 = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //Padding(padding: EdgeInsets.all(10)),
              ElevatedButton.icon(
                  onPressed: ()async{
                    await addSQLData(retorno, informado, data.toUtc().toString(), rcvdData['codigo'].toString());
                    /*user_cura.add({
                      '1': retorno,
                      '2': informado,
                      'data': data,
                      'usuario': rcvdData['codigo'],
                    });*/
                    Navigator.of(context).pushNamed(AppRoutes.USER_VEZES, arguments: {"codigo": rcvdData['codigo'].toString()});
                    },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Próximo'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan))
            ],
          ),
        ),
      ),
    );
  }
}