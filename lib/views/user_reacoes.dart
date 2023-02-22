import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class UserReacoes extends StatelessWidget{
  DataBase dado = new DataBase();
  @override
  Widget build(BuildContext context){
    String fonte = dado.getDataBase;
    String explique = '';
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Adesão ao tratamento'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 20, bottom: 25),
              child: ListView(
                children: [
                  Text('Quais reações teve?',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          /*await http.post(Uri.parse("http://$fonte/malaria/addMotivo.php"), body: {
                            "resposta": 'Nao compreendeu as orientacoes',
                            "usuario": rcvdData['codigo'].toString(),
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child: ListTile(
                          title: Text('Cansaço', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20),),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          /*await http.post(Uri.parse("http://$fonte/malaria/addMotivo.php"), body: {
                            "resposta": 'Sentiu mal-estar apos tomar os comprimidos',
                            "usuario": rcvdData['codigo'].toString(),
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                        },
                        child: ListTile(
                          title: Text('Diarréia', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20)),
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          /*await http.post(Uri.parse("http://$fonte/malaria/addMotivo.php"), body: {
                            "resposta": 'Teve melhora depois de alguns dias',
                            "usuario": rcvdData['codigo'].toString(),
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                        },
                        child: ListTile(
                          title: Text('Coceira nos pés e/ou nas mãos', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))/*,minVerticalPadding: 20*/,
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          /*await http.post(Uri.parse("http://$fonte/malaria/addMotivo.php"), body: {
                            "resposta": 'Esqueceu',
                            "usuario": rcvdData['codigo'].toString(),
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                        },
                        child: ListTile(
                          title: Text('Tontura', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))/*,minVerticalPadding: 20*/,
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          /*await http.post(Uri.parse("http://$fonte/malaria/addMotivo.php"), body: {
                            "resposta": 'Quis consumir bebida alcoólica',
                            "usuario": rcvdData['codigo'].toString(),
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                        },
                        child: ListTile(
                          title: Text('Envoo/Vômito', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))/*,minVerticalPadding: 20*/,
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
                        ]
                    ),
                    child: GestureDetector(
                        onTap: ()async{
                          /*await http.post(Uri.parse("http://$fonte/malaria/addMotivo.php"), body: {
                            "resposta": 'Quis consumir bebida alcoólica',
                            "usuario": rcvdData['codigo'].toString(),
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                        },
                        child: ListTile(
                          title: Text('Não Se Aplica', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20))/*,minVerticalPadding: 20*/,
                        )),),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Outros: especifique'),
                    onChanged: (value){
                      explique = value;
                    },
                  ),
                  Padding(padding: new EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: ElevatedButton.icon(
                        onPressed: () async{
                          /*await http.post(Uri.parse("http://$fonte/malaria/addAgentes.php"), body: {
                            "resposta": explique,
                            "usuario": rcvdData['codigo'].toString(),
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_SOBRARAM, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                        },
                        icon: Icon(Icons.arrow_forward),
                        label: Text('Próximo'),
                        style: ElevatedButton.styleFrom(primary: Colors.cyan)
                    ),
                  )
                ],
              ),
            )
        )
    );
  }

}