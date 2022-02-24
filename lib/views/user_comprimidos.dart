import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserComprimidos extends StatelessWidget{
  CollectionReference user_comprimidos = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_comprimidos/');
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
        child: Padding(
          padding: EdgeInsets.only(top: 120, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Quando teve malária, tomou os comprimidos do jeito que o profissional de saúde lhe orientou?',
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24), textAlign: TextAlign.justify,),
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(value: 1, groupValue: '', onChanged: (_)async{
                                  await user_comprimidos.add({
                                    'resposta': 'Sim',
                                    'usuario': rcvdData['codigo'],
                                  });
                                },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.only(right: 30)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(value: 1, groupValue: '', onChanged: (_)async{
                                  await user_comprimidos.add({
                                    'resposta': 'Não',
                                    'usuario': rcvdData['codigo'],
                                  });
                                },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Explique',
                  contentPadding: new EdgeInsets.fromLTRB(0, 10, 10, 0),),
              ),
              ElevatedButton.icon(
                  onPressed: (){
                    Navigator.of(context).pushNamed(AppRoutes.USER_MOTIVO, arguments: {"codigo": rcvdData['codigo'].toString()});
                    },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Próximo'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan))
            ],
          ),
        ),
      ),
    );
  }
}