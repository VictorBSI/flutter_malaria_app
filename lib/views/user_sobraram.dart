import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class UserSobraram extends StatelessWidget{
  DataBase dado = new DataBase();
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
            child:Padding(
              padding: EdgeInsets.only(top: 25),
              child: ListView(
                children: [
                  Container(
                    child: Text('O que fez com os comprimidos que sobraram?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    padding: EdgeInsets.only(bottom: 10),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addSobraram.php"), body: {
                            "resposta": 'Jogou fora',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Jogou fora', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),),minVerticalPadding: 20,
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addSobraram.php"), body: {
                            "resposta": 'Guardou para tomar na próxima malária',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Guardou para tomar na próxima malária', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addSobraram.php"), body: {
                            "resposta": 'Deu para outra pessoa com suspeita de malária',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Deu para outra pessoa com suspeita de malária', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addSobraram.php"), body: {
                            "resposta": 'Devolveu à unidade de saúde',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Devolveu à unidade de saúde', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),minVerticalPadding: 20,
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addSobraram.php"), body: {
                            "resposta": 'Desconheço',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Desconheço', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),minVerticalPadding: 20,
                        )),),
                  Container(
                    margin: const EdgeInsets.all(5),
                    height: 70,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addSobraram.php"), body: {
                            "resposta": 'Prefiro não responder',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_SEGUIR, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Prefiro não responder', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),minVerticalPadding: 20,
                        )),),
                ],
              ),
            )
        )
    );
  }

}