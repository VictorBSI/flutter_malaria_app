
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:flutter_crud_1/views/user_registro.dart';


class UserResidencia extends StatelessWidget{
  CollectionReference user_residencia = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_residencia/');

  @override
  Widget build(BuildContext context){

    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;

    return Scaffold(
        appBar: AppBar(
          title: Text('Dados Sociodemográficos'),
          centerTitle: true,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 5,),
              child: ListView(
                children: [
                  Text(
                    'Há quantos anos mora nesta residência?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, height: 5, fontSize: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_residencia.add({
                            'resposta': 'De 0 a 2',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('De 0 a 2', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_residencia.add({
                            'resposta': 'De 3 a 7',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('De 3 a 7', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_residencia.add({
                            'resposta': 'De 8 a 10',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('De 8 a 10', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: () async{
                          await user_residencia.add({
                            'resposta': 'Mais de 10',
                            'usuario': rcvdData['codigo'],
                          });
                          Navigator.of(context).pushNamed(AppRoutes.USER_PESSOAS, arguments: {"codigo": rcvdData['codigo'].toString()});
                          },
                        child: ListTile(
                          title: Text('Mais de 10', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
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