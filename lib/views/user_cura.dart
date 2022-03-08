import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserCura extends StatelessWidget{
  CollectionReference user_cura = FirebaseFirestore.instance.collection('usuario/resposta/user_cura/');
  String retorno = '';
  String informado = '';
  DateTime data = DateTime.now();
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientações Terapêuticas'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 0, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('O dia para o seu retorno foi previamente agendado para a realização das lâminas de controle de cura?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //height: 5,
                      fontSize: 22,
                      color: Colors.black54,
                    ), textAlign: TextAlign.justify,
                ),
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
                                    retorno = 'Sim';
                                },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(value: 1, groupValue: '', onChanged: (_){
                                  retorno = 'Não';
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
              Padding(padding: EdgeInsets.all(5)),
              Container(
                child: Text('Data', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black54)),
              ),
              //Padding(padding: EdgeInsets.all(5)),
              Container(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime(1980, 1, 1),
                  onDateTimeChanged: (DateTime newDateTime){
                      data = newDateTime;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Text('Você foi informado por que é feito esse controle de verificação de cura?',
                    style: TextStyle(fontWeight: FontWeight.bold,
                      //height: 5,
                      fontSize: 22,
                      color: Colors.black54,
                    ), textAlign: TextAlign.justify,
                ),
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
                                    informado= 'Sim';
                                },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(value: 1, groupValue: '', onChanged: (_){
                                    informado= 'Não';
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
              //Padding(padding: EdgeInsets.all(10)),
              ElevatedButton.icon(
                  onPressed: ()async{
                    await user_cura.add({
                      '1': retorno,
                      '2': informado,
                      'data': data,
                      'usuario': rcvdData['codigo'],
                    });
                    Navigator.of(context).pushNamed(AppRoutes.USER_VEZES, arguments: {"codigo": rcvdData['codigo'].toString()});
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