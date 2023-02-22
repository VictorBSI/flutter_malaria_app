import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class UserChas extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _UserChas();
}

class _UserChas extends State<UserChas>{
  DataBase dado = new DataBase();
  int _value = 1;
  int _value1 = 1;
  String orientacoes = 'Sim';
  String informacoes = 'Sim';
  String explique = '';
  String explique1 = '';
  @override
  Widget build(BuildContext context){
    String fonte = dado.getDataBase;
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Adesão ao tratamento'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 80, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Usa chás para tratar a malária?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    //height: 5,
                    fontSize: 24,
                    color: Colors.black54,),
                  textAlign: TextAlign.center,),
              ),
              Padding(padding: EdgeInsets.all(10)),
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
                                      orientacoes= 'Sim';
                                      _value = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black54),))
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
                                      orientacoes= 'Não';
                                      _value = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black54)))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextFormField(
                decoration: InputDecoration(labelText: 'Quais?'),
                onChanged: (value){
                  explique = value;
                },
              ),
              Padding(padding: EdgeInsets.all(20)),
              TextFormField(
                decoration: InputDecoration(labelText: 'Quais suas dificuldades para seguir o esquema terapêutico?',),
                onChanged: (value){
                  explique1 = value;
                },
              ),
              Padding(padding: EdgeInsets.all(40)),
              ElevatedButton.icon(
                  onPressed: ()async{
                    /*await http.post(Uri.parse("http://$fonte/malaria/addEvitar.php"), body: {
                      "resposta_1": orientacoes,
                      "resposta_2": informacoes,
                      "usuario": rcvdData['codigo'].toString(),
                    });*/
                    Navigator.of(context).pushNamed(AppRoutes.USER_TRAT, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                  },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Próximo'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan)
              ),
            ],
          ),
        ),
      ),
    );
  }
}