import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserSobraram extends StatelessWidget{
  CollectionReference user_sobraram = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_sobraram/');
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Adesão ao tratamento'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 30,),
              child: ListView(
                children: [
                  Text('O que fez com os comprimidos que sobraram?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, height: 5, fontSize: 14),
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
                          await user_sobraram.add({
                            'resposta': 'Jogou fora',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Jogou fora', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
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
                          await user_sobraram.add({
                            'resposta': 'Guardou para tomar na próxima malária',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Guardou para tomar na próxima malária', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
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
                          await user_sobraram.add({
                            'resposta': 'Deu para outra pessoa com suspeita de malária',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Deu para outra pessoa com suspeita de malária', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
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
                          await user_sobraram.add({
                            'resposta': 'Devolveu à unidade de saúde',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Devolveu à unidade de saúde', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
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
                          await user_sobraram.add({
                            'resposta': 'Desconheço',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
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
                          await user_sobraram.add({
                            'resposta': 'Prefiro não responder',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
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