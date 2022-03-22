import 'package:flutter/material.dart';
import 'package:flutter_crud_1/models/mysql.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

Future<void> addSQLData(String resposta, String usuario) async {
  var db = Mysql();
  return await db.getConnection().then((result){
    result.query('insert into malaria.user_agentes (resposta, usuario) values (?, ?)', [resposta, usuario]);
  });
}

class UserAgentes extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Orientações Terapêuticas'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 30,),
              child: ListView(
                children: [
                  Text('Como o agente de saúde lhe recomendou tomar o remédio?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold,
                      //height: 5,
                      fontSize: 30,
                      color: Colors.black54,),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 80,
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
                          await addSQLData('Em jejum', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_EVITAR, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Em jejum', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),),
                            minVerticalPadding: 25
                        )),),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 80,
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
                          await addSQLData('Principais refeições', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_EVITAR, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Principais refeições', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                            minVerticalPadding: 25
                        )),),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 80,
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
                          await addSQLData('Não recebi orientações/recomendações', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_EVITAR, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Não recebi orientações/recomendações', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24,),),
                          minVerticalPadding: 10,
                        )
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(15),
                    height: 80,
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
                          await addSQLData('Prefiro não responder', rcvdData['codigo'].toString());
                          Navigator.of(context).pushNamed(AppRoutes.USER_EVITAR, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Prefiro não responder', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                          minVerticalPadding: 25,
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