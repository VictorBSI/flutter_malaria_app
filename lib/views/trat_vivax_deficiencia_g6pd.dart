import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class VivaxDeficienciaG6pd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('P.vivax em deficiência de G6PD'), backgroundColor: Colors.cyan,),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 600,
                    child: ((int.parse(rcvdData['idade'].toString()) > 5 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Meses' || (int.parse(rcvdData['peso'].toString()) > 4 && int.parse(rcvdData['peso'].toString()) < 10)) && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView( //Idade 6-11 meses && 5-9 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 1',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        )

                        ,
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 0 && int.parse(rcvdData['idade'].toString()) < 4)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 9 && int.parse(rcvdData['peso'].toString()) < 15)) && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView(  // Idade 1-3 anos && 10-14 Kg
                      children: <Widget>[
                          Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                    child: Text.rich(
                                      TextSpan(
                                        text:'SEMANA 1',
                                        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                      ),
                                    )
                                )
                              ),
                          Padding(
                            padding: EdgeInsets.all(0),
                            child: Container(
                                height: 200,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    Image.asset(''),
                                    Container(child:
                                    Positioned(
                                        bottom: 10,
                                        child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                    )
                                    )
                                  ],
                                ),
                                color: Colors.cyan
                            ),
                          ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)) && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView(  // Idade 4-8 anos && 15-24 Kg
                      children: <Widget>[
                        Container(
                        child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                              child: Text.rich(
                                TextSpan(
                                  text:'SEMANA 1',
                                  style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                ),
                              )
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 8 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)) && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView(  // Idade 9-11 anos && 25-34 Kg
                      children: <Widget>[
                        Container(
                        child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                              child: Text.rich(
                                TextSpan(
                                  text:'SEMANA 1',
                                  style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                ),
                              )
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 11 && int.parse(rcvdData['idade'].toString()) < 15)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 34 && int.parse(rcvdData['peso'].toString()) < 50)) && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView(  // Idade 12-14 anos && 35-49 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 1',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 15  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 49 && int.parse(rcvdData['peso'].toString()) < 70)) && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView(  // Idade > 15 anos && 50-69 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 1',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['peso'].toString()) > 69 && int.parse(rcvdData['peso'].toString()) < 90) && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView(  // 70-89 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 1',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):int.parse(rcvdData['peso'].toString()) > 89 && int.parse(rcvdData['peso'].toString()) < 121?
                    ListView(  // 90-120 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 1',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 2',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 3',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 4',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 5',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 6',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 7',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'SEMANA 8',
                                    style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Image.asset(''),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):ListView(  // 120+ Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'Peso excede tabela',
                                    style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 24),
                                  ),
                                )
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.all(0),
                          child: Container(
                              height: 200,
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  Container(
                                      child: Center(
                                        child: Text('Procure o seu médico', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 30),),
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        )

                        ,
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
