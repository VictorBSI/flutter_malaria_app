import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class VivaxOvale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: rcvdData['tratamento'] == 'Opção 1'? const Text('P.vivax ou P.ovale - Opção 1'): const Text('P.vivax ou P.ovale - Opção 2'), backgroundColor: Colors.cyan,),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  rcvdData['tratamento'] == 'Opção 1'?
                  Container(
                    height: 600,
                    child: int.parse(rcvdData['idade'].toString()) < 6  && rcvdData['tipo_idade'].toString() == 'Meses' && int.parse(rcvdData['peso'].toString()) < 5?
                    ListView( //Idade < 6 meses && < 5Kg
                      children: <Widget>[
                        Container(
                          child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                            child: Text.rich(
                              TextSpan(
                                text:'DIA 1',
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
                                  Image.asset('assets/images/Al-1.png'),
                                  Container(
                                      child: Positioned(
                                        bottom: 10,
                                        child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-1.png'),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-1.png'),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ): (int.parse(rcvdData['idade'].toString()) > 5 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Meses' && (int.parse(rcvdData['peso'].toString()) > 4 && int.parse(rcvdData['peso'].toString()) < 10)?
                    ListView(  // Idade 6-11 meses && 5-9 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-2.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-2.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-2.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 0 && int.parse(rcvdData['idade'].toString()) < 4)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 9 && int.parse(rcvdData['peso'].toString()) < 15)?
                    ListView(  // Idade 1-3 anos && 10-14 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-4.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-4.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-4.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)?
                    ListView(  // Idade 4-8 anos && 15-24 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-8.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-8.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)?
                    ListView(  // Idade 9-11 anos && 25-34 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 11 && int.parse(rcvdData['idade'].toString()) < 15)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 34 && int.parse(rcvdData['peso'].toString()) < 50)?
                    ListView(  // Idade 12-14 anos && 35-49 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):int.parse(rcvdData['idade'].toString()) > 15  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 49 && int.parse(rcvdData['peso'].toString()) < 70)?
                    ListView(  // Idade > 15 anos && 50-69 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-11.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['peso'].toString()) > 69 && int.parse(rcvdData['peso'].toString()) < 90)?
                    ListView(  // 70-89 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-12.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-13.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-13.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-15.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):ListView(  // 90-120 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-15.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ),
                  ):Container(
                    height: 600,
                    child: int.parse(rcvdData['idade'].toString()) < 6  && rcvdData['tipo_idade'].toString() == 'Meses' && int.parse(rcvdData['peso'].toString()) < 5?
                    ListView( //Idade < 6 meses && < 5Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-18.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Artesunato 25 mg + Mefloquina 50 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-18.png'),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Artesunato 25 mg + Mefloquina 50 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-18.png'),
                                  Container(child:
                                  Positioned(
                                      bottom: 10,
                                      child: Text('Artesunato 25 mg + Mefloquina 50 mg', textAlign: TextAlign.center,)
                                  )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ): (int.parse(rcvdData['idade'].toString()) > 5 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Meses' && (int.parse(rcvdData['peso'].toString()) > 4 && int.parse(rcvdData['peso'].toString()) < 10)?
                    ListView(  // Idade 6-11 meses && 5-9 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-19.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artesunato 25 mg + Mefloquina 50 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-19.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artesunato 25 mg + Mefloquina 50 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-19.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artesunato 25 mg + Mefloquina 50 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-3.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 0 && int.parse(rcvdData['idade'].toString()) < 4)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 9 && int.parse(rcvdData['peso'].toString()) < 15)?
                    ListView(  // Idade 1-3 anos && 10-14 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-4.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-4.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-4.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
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
                        ),
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-5.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 5 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)?
                    ListView(  // Idade 4-8 anos && 15-24 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-8.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-8.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)?
                    ListView(  // Idade 9-11 anos && 25-34 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-6.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-7.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['idade'].toString()) > 11 && int.parse(rcvdData['idade'].toString()) < 15)  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 34 && int.parse(rcvdData['peso'].toString()) < 50)?
                    ListView(  // Idade 12-14 anos && 35-49 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):int.parse(rcvdData['idade'].toString()) > 15  && rcvdData['tipo_idade'].toString() == 'Anos' && (int.parse(rcvdData['peso'].toString()) > 49 && int.parse(rcvdData['peso'].toString()) < 70)?
                    ListView(  // Idade > 15 anos && 50-69 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-11.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-10.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):(int.parse(rcvdData['peso'].toString()) > 69 && int.parse(rcvdData['peso'].toString()) < 90)?
                    ListView(  // 70-89 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-12.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-13.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-13.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-14.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-15.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ):ListView(  // 90-120 Kg
                      children: <Widget>[
                        Container(
                            child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                child: Text.rich(
                                  TextSpan(
                                    text:'DIA 1',
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
                                  Image.asset('assets/images/Al-15.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
                                          bottom: 10,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
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
                                    text:'DIA 2',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 3',
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
                                  Image.asset('assets/images/Al-16.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Cloroquina 150 mg', textAlign: TextAlign.center,)
                                      )
                                  ),
                                  Container(
                                      child: Positioned(
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
                                    text:'DIA 4',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 5',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 6',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
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
                                    text:'DIA 7',
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
                                  Image.asset('assets/images/Al-17.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Primaquina 15 mg', textAlign: TextAlign.center,)
                                      )
                                  )
                                ],
                              ),
                              color: Colors.cyan
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
