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
        ),
        body: Center(
            child:Padding(
              padding: EdgeInsets.only(top: 30,),
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(AppRoutes.USER_REGISTRO);
                        },
                        child: ListTile(
                          title: Text('Pesquisa', textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        )),),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushNamed(AppRoutes.USER_TRAT);
                        },
                        child: ListTile(
                          title: Text('Tratamento', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                        )),),
                ],
              ),
            )
        )
    );
  }

}