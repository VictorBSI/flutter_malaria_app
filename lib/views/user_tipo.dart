import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserTipo extends StatelessWidget{
  CollectionReference user_tipo = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_tipo/');
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Antecedentes Sobre a Malária'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 0,),
              child: ListView(
                children: [
                  Text('Qual o tipo de malária você teve?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, height: 5, fontSize: 18),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_tipo.add({
                            'resposta': 'P. vivax',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TEMPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('P. vivax', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_tipo.add({
                            'resposta': 'Plasmodium faliparum',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TEMPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Plasmodium faliparum', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_tipo.add({
                            'resposta': 'P.malaria',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TEMPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('P.malariae', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_tipo.add({
                            'resposta': 'Mista',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TEMPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Mista', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_tipo.add({
                            'resposta': 'Desconheço',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TEMPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Desconheço', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_tipo.add({
                            'resposta': 'Prefiro não responder',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TEMPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Prefiro não responder', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                ],
              ),
            )
        )
    );
  }

}