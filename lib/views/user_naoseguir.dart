import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class UserNaoseguir extends StatelessWidget{
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
              padding: EdgeInsets.only(top: 160,),
              child: ListView(
                children: [
                  Container(
                    child: Text(
                      'Quais orientações você não consegue seguir?',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    padding: EdgeInsets.only(left: 5, bottom: 15),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
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
                          await http.post(Uri.parse("http://$fonte/malaria/addNaoseguir.php"), body: {
                            "resposta": 'Orientações sobre comprimidos',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_REMEDIO, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Orientações sobre comprimidos', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),/*minVerticalPadding: 20*/
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
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
                          await http.post(Uri.parse("http://$fonte/malaria/addNaoseguir.php"), body: {
                            "resposta": 'Sobre mudança de hábitos',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_REMEDIO, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Sobre mudança de hábitos', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),/*minVerticalPadding: 20*/
                        )),),
                ],
              ),
            )
        )
    );
  }

}