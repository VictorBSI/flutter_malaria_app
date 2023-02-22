import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:http/http.dart' as http;
import '../database.dart';


class UserLocalidade extends StatelessWidget{
  DataBase dado = new DataBase();

  @override
  Widget build(BuildContext context){
    String fonte = dado.getDataBase;
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
        appBar: AppBar(
          title: Text('Dados Sociodemográficos',),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 5,),
              child: ListView(
                children: [
                  Container(
                    child: Text(
                      'Há quantos anos mora nesta localidade?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          //height: 5,
                          fontSize: 30,
                          color: Colors.black54,
                      ),
                    ), padding: EdgeInsets.only(top: 25, bottom: 25),
                  ),
                  Container(
                    width: double.infinity,
                    height: 75,
                    margin: const EdgeInsets.all(8),
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
                        onTap: () async{
                          await http.post(Uri.parse("http://$fonte/malaria/addLocalidade.php"), body: {
                            "resposta": 'De 0 a 2',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          // addSQLData('De 0 a 2', rcvdData['codigo'].toString());
                          /*user_residencia.add({
                            'resposta': 'De 0 a 2',
                            'usuario': rcvdData['codigo'],
                          }).then((value) => print(value.id));*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child: Center(
                          child: ListTile(
                            title: Text('De 0 a 2', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                          )
                        )
                    ),
                  ),
                  Container(
                    height: 75,
                    width: double.infinity,
                    margin: const EdgeInsets.all(8),
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
                        onTap: () async{
                          await http.post(Uri.parse("http://$fonte/malaria/addLocalidade.php"), body: {
                            "resposta": 'De 3 a 7',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          //addSQLData('De 3 a 7', rcvdData['codigo'].toString());
                          /*user_residencia.add({
                            'resposta': 'De 3 a 7',
                            'usuario': rcvdData['codigo'],
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child: Center(
                            child: ListTile(
                            title: Text('De 3 a 7', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                        ))
                    ),),
                  Container(
                    height: 75,
                    width: double.infinity,
                    margin: const EdgeInsets.all(8),
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
                      ],
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await http.post(Uri.parse("http://$fonte/malaria/addLocalidade.php"), body: {
                            "resposta": 'De 8 a 10',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          //addSQLData('De 8 a 10', rcvdData['codigo'].toString());
                          /*user_residencia.add({
                            'resposta': 'De 8 a 10',
                            'usuario': rcvdData['codigo'],
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child:
                          Center(
                            child: ListTile(
                              title: Text('De 8 a 10', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                            )
                          )
                    ),),
                  Container(
                    height: 75,
                    margin: const EdgeInsets.all(8),
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
                      //borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await http.post(Uri.parse("http://$fonte/malaria/addLocalidade.php"), body: {
                            "resposta": 'Mais de 10',
                            "usuario": rcvdData['codigo'].toString(),
                          });
                          /*user_residencia.add({
                            'resposta': 'Mais de 10',
                            'usuario': rcvdData['codigo'],
                          });*/
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString(), "data_nascimento": rcvdData['data_nascimento']});
                          },
                        child:
                          Center(
                            child: ListTile(
                              title: Text('Mais de 10', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
                            )
                          )
                    ),),
                ],
              ),
            )
        )
    );
  }

}

// import 'package:flutter/material.dart';
// import 'package:flutter_crud_1/routes/app_routes.dart';
//
// class UserResidencia extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Dados Sociodemográficos'),
//           centerTitle: true,
//         ),
//         body: Center(
//             child:Padding(
//               padding: EdgeInsets.only(top: 140,),
//                 child: ListView(
//                   children: [
//                     Text('', textAlign: TextAlign.center,),
//                     Container(
//                       margin: const EdgeInsets.all(25),
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                       child: GestureDetector(
//                         onTap: (){Navigator.of(context).pushNamed(AppRoutes.USER_CASA);},
//                         child: ListTile(
//                           title: Text('Há quantos anos mora nesta residência?', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
//                         )),),
//                     Container(
//                       margin: const EdgeInsets.all(25),
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                       child: GestureDetector(
//                         onTap: (){Navigator.of(context).pushNamed(AppRoutes.USER_CASA);},
//                         child: ListTile(
//                           title: Text('Quantas pessoas moram na sua residência?', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
//                         )),),
//                     Container(
//                       margin: const EdgeInsets.all(25),
//                       decoration: BoxDecoration(
//                         color: Colors.blueAccent,
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                       child: GestureDetector(
//                         onTap: (){Navigator.of(context).pushNamed(AppRoutes.USER_CASA);},
//                         child: ListTile(
//                           title: Text('Quanto é a sua renda familiar mensal total?', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
//                         )),),
//                   ],
//                 ),
//             )
//         )
//     );
//   }
//
// }