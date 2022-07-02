import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class UserOrientacoes extends StatelessWidget{
  DataBase dado = new DataBase();
  String resposta = '';
  @override
  Widget build(BuildContext context){
    String fonte = dado.getDataBase;
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Orientações Terapêuticas'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 180, right: 10, left: 10),
              child: ListView(
                children: [
                  Container(
                    child: Text(
                      'Quais orientações recebeu em relação ao tratamento?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //height: 5,
                        fontSize: 30,
                        color: Colors.black54,
                      ),
                    ),
                    padding: EdgeInsets.only(bottom: 25),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Descreva como vai tomar os remédios',
                    contentPadding: new EdgeInsets.fromLTRB(60, 10, 10, 0),),
                    onChanged: (value){
                      resposta = value;
                    },
                  ),
                  Padding(padding: new EdgeInsets.only(top: 200, left: 10, right: 10),
                    child: ElevatedButton.icon(
                            onPressed: () async{
                              await http.post(Uri.parse("http://$fonte/malaria/addOrientacao.php"), body: {
                                "resposta": resposta,
                                "usuario": rcvdData['codigo'].toString(),
                              });
                              Navigator.of(context).pushNamed(AppRoutes.USER_AGENTES, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                              },
                            icon: Icon(Icons.arrow_forward),
                            label: Text('Próximo'),
                            style: ElevatedButton.styleFrom(primary: Colors.cyan)
                  ),
                )
                ],
              ),
            )
        )
    );
  }

}