import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_crud_1/database.dart';
import 'package:flutter_crud_1/provider/users.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_crud_1/views/user_residencia.dart';
import 'package:provider/provider.dart';

class UserTratamento extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UserTratamento();
}


class _UserTratamento extends State<UserTratamento> {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  CollectionReference user_tratamento = FirebaseFirestore.instance.collection('usuario/tratamento/user_tratamento/');
  final _formKey = GlobalKey<FormState>();
  //UserTratamento({Key? key}) : super(key: key);
  String tratamento = '';
  String tipo = '';
  int idade = 0;
  List<String> tipoIdade = ['Anos', 'Meses'];
  int peso = 0;
  List<String> _tipos = ['falciparum', 'malariae', 'mista', 'vivax_ovale', 'vivax_recorrencia_60dias', 'vivax_deficiencia_G6PD'];
  List<String> vivax_ovale = ['Opção 1', 'Opção 2'];
  List<String> vivax_recorrencia_60dias = ['Opção 1', 'Opção 2'];
  List<String> falciparum = ['Opção 1', 'Opção 2'];
  List<String> mista = ['Opção 1', 'Opção 2'];
  List<String> malarae = ['Opção 1'];
  String _selectedTipos = 'Selecione';
  String _selectedTrat = 'Selecione';
  String _selectedIdade = 'Tipo';
  String anomes = '';
  String opcao = '';
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context){
    //final TestText text = new TestText();
    return MultiProvider(
      key: _formKey,
      providers: [
        ChangeNotifierProvider(create: (ctx) => Users(),),
      ],
      child: FutureBuilder(
        future: _fbApp,
        builder:(context, snapshot) {
          if (snapshot.hasError) {
            print('You have an error! ${snapshot.error.toString()}');
            return Text('Something went wrong!');
          } else if (snapshot.hasData) {
            return Scaffold(

              appBar: AppBar(
                title: Text('Dados Iniciais'),
                centerTitle: true,
                backgroundColor: Colors.cyan,
              ),
              body: Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: ListView(
                    children: <Widget>[
                      Text('Tipo de Malária', maxLines: 2,),
                      DropdownButton<String>(
                          hint: Text(_selectedTipos),
                          onChanged: (newValue){
                            setState(() {
                              _selectedTipos = newValue!;
                            });
                            tipo = newValue!;
                          //text.update();
                        },
                        items: _tipos.map((tipo) {
                          return DropdownMenuItem(
                            child: new Text(tipo),
                            value: tipo,
                          );
                        }).toList(),
                          /*items: <String>['falciparum', 'malarae', 'mista', 'vivax_ovale'].map((String value){
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),);
                          }).toList(),*/
                      ),
                      /*
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Tipo de Malária'),
                        onChanged: (value) {
                          nome = value;
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Digite algo';
                          }
                          return null;
                        },
                      ),*/
                     /* TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Tratamento'),
                        onChanged: (value){
                          tratamento = value;
                        },
                      ),*/
                      Text('Tratamento', maxLines: 2,),

                      DropdownButton<String>(
                        hint: Text(_selectedTrat),
                        onChanged: (newValue){
                          setState(() {
                            _selectedTrat = newValue!;
                          });
                          opcao = newValue!;
                          //text.update();
                        },
                        items:_selectedTipos == 'falciparum'?falciparum.map((opcao) {
                          return DropdownMenuItem(
                            child: new Text(opcao),
                            value: opcao,
                          );
                        }).toList():_selectedTipos == 'malariae'?malarae.map((opcao) {
                          return DropdownMenuItem(
                            child: new Text(opcao),
                            value: opcao,
                          );
                        }).toList():_selectedTipos == 'mista'?mista.map((opcao) {
                          return DropdownMenuItem(
                            child: new Text(opcao),
                            value: opcao,
                          );
                        }).toList():_selectedTipos == 'vivax_recorrencia_60dias'?vivax_recorrencia_60dias.map((opcao) {
                          return DropdownMenuItem(
                            child: new Text(opcao),
                            value: opcao,
                          );
                        }).toList():_selectedTipos == 'vivax_deficiencia_G6PD'?vivax_recorrencia_60dias.map((opcao) {
                          return DropdownMenuItem(
                            child: new Text(opcao),
                            value: opcao,
                          );
                        }).toList():vivax_ovale.map((opcao) {
                          return DropdownMenuItem(
                            child: new Text(opcao),
                            value: opcao,
                          );
                        }).toList()
                      ),
                      Row(
                        children:[
                                Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(labelText: 'Idade'),
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                      onChanged: (value){
                                        int v = int.parse(value);
                                        idade = v;
                                      },
                                    )
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    child:DropdownButton<String>(
                                        hint: Text(_selectedIdade),
                                        onChanged: (newValue){
                                          setState(() {
                                            _selectedIdade = newValue!;
                                          });
                                          anomes = newValue!;
                                          //text.update();
                                        },
                                        items: tipoIdade.map((anomes) {
                                          return DropdownMenuItem(
                                            child: new Text(anomes),
                                            value: anomes,
                                          );
                                        }).toList(),
                                    ),
                                )
                        ]
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Peso'),
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        onChanged: (value){
                          int v = int.parse(value);
                          peso = v;
                        },
                      ),
                      CheckboxListTile(
                        value: checkboxValue,
                        onChanged: (val) {
                          setState(() => checkboxValue = val!);
                        },
                        title: new Text(
                          'Gestante',
                          style: TextStyle(fontSize: 14.0),
                        ),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.cyan,
                      ),
                      ElevatedButton.icon(
                          onPressed: () async{
                            await user_tratamento.add({
                              'tipo': tipo,
                              'tratamento': tratamento,
                              'idade': idade,
                              'peso': peso,
                              'gestante': checkboxValue? 'gestante': 'não gestante',
                            }
                            ).then((value) => print(opcao));
                            tipo == 'vivax_ovale' && checkboxValue == false? Navigator.of(context).pushNamed(
                                AppRoutes.TRAT_VIVAX_OVALE,
                                arguments: {
                                  "tipo": tipo,
                                  "tratamento": opcao,
                                  "idade": idade,
                                  "peso": peso,
                                  "gestante": checkboxValue,
                                  "tipo_idade": anomes,
                                }): tipo == 'vivax_ovale' && checkboxValue == true? Navigator.of(context).pushNamed(
                                AppRoutes.TRAT_VIVAX_OVALE_GESTANTE,
                                arguments: {
                                  "tipo": tipo,
                                  "tratamento": opcao,
                                  "idade": idade,
                                  "peso": peso,
                                  "gestante": checkboxValue,
                                  "tipo_idade": anomes,
                                }): tipo == 'malariae'? Navigator.of(context).pushNamed(
                                AppRoutes.TRAT_MALARAE,
                                arguments: {
                                  "tipo": tipo,
                                  "tratamento": opcao,
                                  "idade": idade,
                                  "peso": peso,
                                  "gestante": checkboxValue,
                                  "tipo_idade": anomes,
                                }): tipo == 'falciparum' && checkboxValue == false? Navigator.of(context).pushNamed(
                                AppRoutes.TRAT_FALCIPARUM,
                                arguments: {
                                  "tipo": tipo,
                                  "tratamento": opcao,
                                  "idade": idade,
                                  "peso": peso,
                                  "gestante": checkboxValue,
                                  "tipo_idade": anomes,
                                }): tipo == 'falciparum' && checkboxValue == true? Navigator.of(context).pushNamed(
                                AppRoutes.TRAT_FALCIPARUM_GESTANTE,
                                arguments: {
                                  "tipo": tipo,
                                  "tratamento": opcao,
                                  "idade": idade,
                                  "peso": peso,
                                  "gestante": checkboxValue,
                                  "tipo_idade": anomes,
                                }): tipo == 'vivax_recorrencia_60dias'? Navigator.of(context).pushNamed(
                                AppRoutes.TRAT_RECORRENCIA60_VIVAX,
                                arguments: {
                                  "tipo": tipo,
                                  "tratamento": opcao,
                                  "idade": idade,
                                  "peso": peso,
                                  "gestante": checkboxValue,
                                  "tipo_idade": anomes,
                                }): tipo == 'vivax_deficiencia_G6PD'? Navigator.of(context).pushNamed(
                                AppRoutes.TRAT_VIVAX_DEFICIENCIA_G6PD,
                                arguments: {
                                  "tipo": tipo,
                                  "tratamento": opcao,
                                  "idade": idade,
                                  "peso": peso,
                                  "gestante": checkboxValue,
                                  "tipo_idade": anomes,
                                }): Navigator.of(context).pushNamed(AppRoutes.LOGIN);
                          }, //AppRoutes.USER_RESIDENCIA
                          icon: Icon(Icons.arrow_forward),
                          label: Text('Próximo'),
                          style: ElevatedButton.styleFrom(primary: Colors.cyan)),

                    ],
                  ),
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },



      ),
    );
  }
}

/*
class TestText extends StatefulWidget {

  final _TestTextState state = new _TestTextState();

  void update() {
    state.change();
  }

  @override
  _TestTextState createState() => state;
}

class _TestTextState extends State<TestText> {

  String text = "Selecione";

  void change() {
    setState(() {
      this.text = this.text == "falciparum" ? "falciparum" : "original";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Text(this.text);
  }
}*/
