import 'package:flutter/material.dart';
import 'package:flutter_crud/routes/app_routes.dart';

class UserResidencia extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Dados Sociodemográficos'),
        centerTitle: true,
      ),
      body: Center(
      child:Padding(
        padding: EdgeInsets.all(150),
        child: ListView(
          children: [
            Text('', textAlign: TextAlign.center,),
            GestureDetector(
              onTap: (){Navigator.of(context).pushNamed(AppRoutes.HOME);},
            child: ListTile(
              title: Text('Teste', textAlign: TextAlign.center,),
              //trailing: Text('Metadata'),
            )),
            ListTile(
              title: Text('Teste2', textAlign: TextAlign.center,),
              //trailing: Text('Metadata2'),
            ),

          ],
        ),
      )
      )
    );
  }

}