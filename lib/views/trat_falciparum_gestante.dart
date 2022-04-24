import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// To-Do: Trocar imagens 27/02/2022
class VivaxOvaleGestante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('P.falciparum - Gestantes'), backgroundColor: Colors.cyan,),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                      height: 600,
                      child: ((int.parse(rcvdData['idade'].toString()) > 8 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 24 && int.parse(rcvdData['peso'].toString()) < 35)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                    Image.asset('assets/images/CQ-2.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),

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
                                    Image.asset('assets/images/CQ-2.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-2.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-3.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-3.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-3.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
                                  ],
                                ),
                                color: Colors.cyan
                            ),
                          ),
                        ],
                      ):(int.parse(rcvdData['idade'].toString()) > 15  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 49 && int.parse(rcvdData['peso'].toString()) < 70)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                    Image.asset('assets/images/CQ-4.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-3.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-3.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-4.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-3.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                    Image.asset('assets/images/CQ-3.png'),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                        )
                                    ),
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
                                      Image.asset('assets/images/CQ-4.png'),
                                      Container(
                                          child: Positioned(
                                              bottom: 30,
                                              child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                          )
                                      ),
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
                                      Image.asset('assets/images/CQ-3.png'),
                                      Container(
                                          child: Positioned(
                                              bottom: 30,
                                              child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                          )
                                      ),
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
                                      Image.asset('assets/images/CQ-3.png'),
                                      Container(
                                          child: Positioned(
                                              bottom: 30,
                                              child: Text('Cloroquina 150 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
                                          )
                                      ),
                                    ],
                                  ),
                                  color: Colors.cyan
                              ),
                            ),
                          ]
                      ):ListView(  // 120+ Kg
                        children: <Widget>[
                          Container(
                              child:Padding (padding: EdgeInsets.only(top: 10, bottom: 0.0),
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'Peso excede tabela',//text:'DIA 1',
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
                          ),
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
