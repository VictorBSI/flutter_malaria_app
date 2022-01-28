import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserOrientacoes extends StatelessWidget{
  CollectionReference user_orientacoes = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_orientacoes/');
  String resposta = '';
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Orientações Terapêuticas'),
          centerTitle: true,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 200,),
              child: ListView(
                children: [
                  Text(
                    'Quais orientações recebeu em relação ao tratamento?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, height: 5, fontSize: 14),
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
                              await user_orientacoes.add({
                                'resposta': resposta,
                                'usuario': rcvdData['codigo'],
                              });
                              Navigator.of(context).pushNamed(AppRoutes.USER_AGENTES, arguments: {"codigo": rcvdData['codigo'].toString()});
                              },
                            icon: Icon(Icons.arrow_forward),
                            label: Text('Próximo'),
                  ),
                )
                ],
              ),
            )
        )
    );
  }

}