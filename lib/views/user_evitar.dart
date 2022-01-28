import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserEvitar extends StatelessWidget{
  CollectionReference user_evitar = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_evitar/');
  String orientacoes = '';
  String informacoes = '';
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientações Terapêuticas'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 160, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Recebeu orientações para evitar o consumo de bebida alcoólica durante o tratamento?',
                  style: TextStyle(fontWeight: FontWeight.bold)),
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
                                Radio(value: 1, groupValue: '', onChanged: (_){
                                    orientacoes= 'Sim';
                                },),
                                Expanded(child: Text('Sim', maxLines: 2,))
                              ],
                            )
                        ),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(value: 1, groupValue: '', onChanged: (_){
                                    orientacoes= 'Não';
                                },),
                                Expanded(child: Text('Não', maxLines: 2,))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Recebeu outras informações sobre a malária, além das orientações sobre o tratamento?',
                    style: TextStyle(fontWeight: FontWeight.bold)),
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
                                Radio(value: 1, groupValue: '', onChanged: (_){
                                    informacoes= 'Sim';
                                },),
                                Expanded(child: Text('Sim', maxLines: 2,))
                              ],
                            )
                        ),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(value: 1, groupValue: '', onChanged: (_){
                                    informacoes= 'Não';
                                },),
                                Expanded(child: Text('Não', maxLines: 2,))
                              ],
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
              ElevatedButton.icon(
                  onPressed: ()async{
                    await user_evitar.add({
                      '1': orientacoes,
                      '2': informacoes,
                      'usuario': rcvdData['codigo'],
                    });
                    Navigator.of(context).pushNamed(AppRoutes.USER_CURA, arguments: {"codigo": rcvdData['codigo'].toString()});
                    },
                  icon: Icon(Icons.arrow_forward),
                  label: Text('Próximo'))
            ],
          ),
        ),
      ),
    );
  }
}