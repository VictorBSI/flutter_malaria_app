import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';

class UserTempo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _UserTempo();
}

class _UserTempo extends State<UserTempo>{
  CollectionReference user_tempo = FirebaseFirestore.instance.collection('usuario/resposta/user_tempo/');
  String informar = '';
  String momento = '';
  String meses = '';
  String quem = '';
  int _value = 1;
  int _value1 = 1;
  @override
  Widget build(BuildContext context){
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text('Antecedentes Sobre a Malária'),
        centerTitle: true,
          backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: ListView(
            children: <Widget>[
              Container(
                child: Text('Quanto tempo faz desde a última malária?', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
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
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24,), textAlign: TextAlign.justify,),
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
                                Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value){
                                    setState(() {
                                      informar = 'Sim';
                                      _value = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.only(right: 30),),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _value,
                                  onChanged: (value){
                                    setState(() {
                                      informar = 'Não';
                                      _value = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54)))
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
                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24)),
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
                                Radio(
                                  value: 1,
                                  groupValue: _value1,
                                  onChanged: (value){
                                    setState(() {
                                      momento = 'Sim';
                                      _value1 = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Sim', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54)))
                              ],
                            )
                        ),
                        Padding(padding: EdgeInsets.only(right: 30),),
                        Flexible(
                            flex: 1,
                            child: Row(
                              children: [
                                Radio(
                                  value: 0,
                                  groupValue: _value1,
                                  onChanged: (value){
                                    setState(() {
                                      momento = 'Não';
                                      _value1 = int.parse(value.toString());
                                    });
                                  },),
                                Expanded(child: Text('Não', maxLines: 2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54)))
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
                  label: Text('Próximo'),
                  style: ElevatedButton.styleFrom(primary: Colors.cyan))
            ],
          ),
        ),
      ),
    );
  }
}