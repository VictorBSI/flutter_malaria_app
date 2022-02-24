import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserMotivo extends StatelessWidget{
  CollectionReference user_motivo = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_motivo/');
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
                  Text('Não tomou os comprimidos por qual motivo?',
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
                          await user_motivo.add({
                            'resposta': 'Não compreendeu as orientações',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Não compreendeu as orientações', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
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
                          await user_motivo.add({
                            'resposta': 'Sentiu mal-estar após tomar os comprimidos',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Sentiu mal-estar após tomar os comprimidos', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
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
                          await user_motivo.add({
                            'resposta': 'Teve melhora depois de 3 dias',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Teve melhora depois de 3 dias', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
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
                          await user_motivo.add({
                            'resposta': 'Quis consumir bebida alcoólica',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Quis consumir bebida alcoólica', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
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
                          await user_motivo.add({
                            'resposta': 'Outros',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Outros', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                ],
              ),
            )
        )
    );
  }

}