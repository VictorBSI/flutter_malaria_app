import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserVezes extends StatelessWidget{
  CollectionReference user_vezes = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_vezes/');
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
                  Container(
                    child: Text('Quantas vezes você já teve malária?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //height: 5,
                        fontSize: 30,
                        color: Colors.black54,),
                    ),
                    padding: EdgeInsets.only(top: 25, bottom: 25),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_vezes.add({
                            'resposta': '1 vez',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TIPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('1 vez', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_vezes.add({
                            'resposta': '2 vezes',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TIPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('2 vezes', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_vezes.add({
                            'resposta': '3 vezes',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TIPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('3 vezes', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_vezes.add({
                            'resposta': '4 vezes',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TIPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('4 vezes', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_vezes.add({
                            'resposta': 'Mais de 4 vezes',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TIPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Mais de 4 vezes', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: const Offset(
                              5.0,
                              5.0,
                            ),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.white,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ), //BoxShadow
                        ],),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_vezes.add({
                            'resposta': 'Prefiro não responder',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_TIPO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Prefiro não responder', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),),
                        )),),
                ],
              ),
            )
        )
    );
  }

}