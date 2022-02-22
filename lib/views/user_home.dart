import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserHome extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('Início'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 30,),
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      /*color: Colors.cyan,
                      borderRadius: BorderRadius.circular(30.0),*/
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
                        onTap: (){
                          Navigator.of(context).pushNamed(AppRoutes.USER_REGISTRO);
                        },
                        child: ListTile(
                          title: Text('Pesquisa', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20),),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 60,
                    decoration: BoxDecoration(
                      /*color: Colors.cyan,
                      borderRadius: BorderRadius.circular(30.0),*/
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
                        onTap: (){
                          Navigator.of(context).pushNamed(AppRoutes.USER_TRAT);
                        },
                        child: ListTile(
                          title: Text('Tratamento', textAlign: TextAlign.center, style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20)),
                        )),),
                ],
              ),
            )
        )
    );
  }

}