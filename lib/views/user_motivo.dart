import 'package:flutter/material.dart';
import 'package:flutter_crud_1/models/mysql.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

Future<void> addSQLData(String resposta, String usuario) async {
  var db = Mysql();
  return await db.getConnection().then((result){
    result.query('insert into malaria.user_motivo (resposta, usuario) values (?, ?)', [resposta, usuario]);
  });
}

class UserMotivo extends StatelessWidget{
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
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: ListView(
                children: [
                  Text('Não tomou os comprimidos por qual motivo?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
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
                          await addSQLData('Não compreendeu as orientações', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Não compreendeu as orientações', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),),
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
                          await addSQLData('Sentiu mal-estar após tomar os comprimidos', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Sentiu mal-estar após tomar os comprimidos', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
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
                          await addSQLData('Teve melhora depois de 3 dias', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Teve melhora depois de 3 dias', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24))/*,minVerticalPadding: 20*/,
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
                          await addSQLData('Quis consumir bebida alcoólica', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Quis consumir bebida alcoólica', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24))/*,minVerticalPadding: 20*/,
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
                          await addSQLData('Outros', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString()});
                        },
                        child: ListTile(
                          title: Text('Outros', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),minVerticalPadding: 20,
                        ),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }

}