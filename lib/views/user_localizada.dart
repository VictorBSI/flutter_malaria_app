import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserLocalizada extends StatelessWidget{
  CollectionReference user_localizada = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_localizada/');
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Dados Sociodemográficos'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 0,),
              child: ListView(
                children: [
                  Container(
                    child: Text(
                      'Onde a sua casa está localizada?',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold,
                        //height: 5,
                        fontSize: 30,
                        color: Colors.black54,),
                    ),
                    padding: EdgeInsets.only(top: 15, bottom: 15),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(30.0),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_localizada.add({
                            'resposta': 'Zona rural',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_OCUPACAO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Zona rural', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(30.0),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_localizada.add({
                            'resposta': 'Zona urbana',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_OCUPACAO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Zona urbana', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(30.0),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_localizada.add({
                            'resposta': 'Comunidade indígena',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_OCUPACAO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Comunidade indígena', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(30.0),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_localizada.add({
                            'resposta': 'Comunidade quilombola',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_OCUPACAO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Comunidade quilombola', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(30.0),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_localizada.add({
                            'resposta': 'Área de garimpo',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_OCUPACAO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Área de garimpo', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(30.0),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_localizada.add({
                            'resposta': 'Assentamento',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_OCUPACAO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Assentamento', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        //borderRadius: BorderRadius.circular(30.0),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          await user_localizada.add({
                            'resposta': 'Fronteiras intermunicipais',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_OCUPACAO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Fronteiras intermunicipais', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                ],
              ),
            )
        )
    );
  }

}