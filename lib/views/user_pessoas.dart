import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserPessoas extends StatelessWidget{
  CollectionReference user_pessoas = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_pessoas/');


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
              padding: EdgeInsets.only(top: 20,),
              child: ListView(
                children: [
                  Text(
                    'Quantas pessoas moram na sua residência?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //height: 5,
                      fontSize: 30,
                      color: Colors.black54,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    margin: const EdgeInsets.all(15),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_pessoas.add({
                            'resposta': 'Moro sozinho',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_RENDA, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Moro sozinho', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(15),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_pessoas.add({
                            'resposta': 'Uma a três',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_RENDA, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Uma a três', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(15),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_pessoas.add({
                            'resposta': 'Quatro a sete',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_RENDA, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Quatro a sete', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(15),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_pessoas.add({
                            'resposta': 'Oito a dez',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_RENDA, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Oito a dez', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(15),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_pessoas.add({
                            'resposta': 'Mais de dez',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_RENDA, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Mais de dez', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                ],
              ),
            )
        )
    );
  }

}