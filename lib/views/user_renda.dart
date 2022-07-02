import 'package:flutter/material.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;

class UserRenda extends StatelessWidget{
  DataBase dado = new DataBase();
  @override
  Widget build(BuildContext context){
    String fonte = dado.getDataBase;
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Dados Sociodemográficos'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 25),
              child: ListView(
                children: [
                  Text(
                    'Quanto é a sua renda familiar mensal total?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //height: 5,
                      fontSize: 30,
                      color: Colors.black54,),
                  ),
                  Container(
                    width: double.infinity,
                    height: 75,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addRenda.php"), body: {
                            "resposta": r'Até 1 salário mínimo (até R$1.100,00)',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_CASA, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child: ListTile(
                          title: Text(r'Até 1 salário mínimo (até R$1.100,00)', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),),contentPadding: EdgeInsets.only(top: 5),
                        )),),
                  Container(
                    width: double.infinity,
                    height: 75,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addRenda.php"), body: {
                            "resposta": r'1 a 3 salários mínimos (R$ 1.100,00 a 3.300,00)',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_CASA, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child: ListTile(
                          title: Text(r'1 a 3 salários mínimos (R$ 1.100,00 a 3.300,00)', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),contentPadding: EdgeInsets.only(top: 5)
                        )),),
                  Container(
                    width: double.infinity,
                    height: 75,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addRenda.php"), body: {
                            "resposta": r'3 a 6 salários mínimos (R$ 3.300,00 a 6.600,00)',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_CASA, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child: ListTile(
                          title: Text(r'3 a 6 salários mínimos (R$ 3.300,00 a 6.600,00)', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),contentPadding: EdgeInsets.only(top: 5)
                        )),),
                  Container(
                    width: double.infinity,
                    height: 75,
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
                        onTap: ()async{
                          await http.post(Uri.parse("http://$fonte/malaria/addRenda.php"), body: {
                            "resposta": r'Mais de 6 salários mínimos (mais de 6.600,00)',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_CASA, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child: ListTile(
                          title: Text(r'Mais de 6 salários mínimos (mais de 6.600,00)', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),contentPadding: EdgeInsets.only(top: 5)
                        )),),
                ],
              ),
            )
        )
    );
  }

}