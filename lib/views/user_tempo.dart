import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserTempo extends StatelessWidget{
  CollectionReference user_tempo = FirebaseFirestore.instance.collection('/resposta/GjPewnIdUJUpJzVrHYZB/user_tempo/');
  String informar = '';
  String momento = '';
  String meses = '';
  String quem = '';
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Antecedentes Sobre a Malária'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 120, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                child: Text('Quanto tempo faz desde a última malária?', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'meses',
                  contentPadding: new EdgeInsets.fromLTRB(0, 10, 10, 0),),
                onChanged: (value) async{
                    meses = value;
                },
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Você costuma informar ao profissional de saúde quando alguém do seu convívio está com suspeita de malária?',
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
                                    informar= 'Sim';
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
                                    informar= 'Não';
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
                child: Text('Além de você, tem alguém com malária na sua família neste momento?',
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
                                    momento= 'Sim';
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
                                    momento= 'Não';
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
              TextFormField(
                decoration: InputDecoration(labelText: 'Quem?',
                    contentPadding: new EdgeInsets.fromLTRB(0, 10, 10, 0),),
                onChanged: (value)async{
                    quem= value;
                },
              ),
              ElevatedButton.icon(
                  onPressed: ()async{
                    await user_tempo.add({
                      '1': informar,
                      '2': momento,
                      'meses': meses,
                      'quem': quem,
                      'usuario': rcvdData['codigo'],
                    });
                    Navigator.of(context).pushNamed(AppRoutes.USER_COMPRIMIDOS, arguments: {"codigo": rcvdData['codigo'].toString()});
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