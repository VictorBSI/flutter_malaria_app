import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/provider/notificationservice.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

// To-Do: Trocar imagens 27/02/2022
class Falciparum extends StatefulWidget {
  @override
  State<Falciparum> createState() => _FalciparumState();
}

class _FalciparumState extends State<Falciparum> {
  @override
  void initState(){
    super.initState();
    var initializationSettingsAndroid =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = IOSInitializationSettings();
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
    );

    tz.initializeTimeZones();
  }
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> rcvdData = ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: rcvdData['tratamento'] == 'Opção 1'? const Text('P.falciparum - Opção 1'): const Text('P.falciparum - Opção 2'), backgroundColor: Colors.cyan,),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  rcvdData['tratamento'] == 'Opção 1'?
                  Container(
                    height: 600,
                    child: (int.parse(rcvdData['idade'].toString()) < 6  && rcvdData['tipo_idade'].toString() == 'Meses' || int.parse(rcvdData['peso'].toString()) < 5) && int.parse(rcvdData['peso'].toString()) < 121?
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
                    ): ((int.parse(rcvdData['idade'].toString()) > 5 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Meses' || (int.parse(rcvdData['peso'].toString()) > 4 && int.parse(rcvdData['peso'].toString()) < 10)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 0 && int.parse(rcvdData['idade'].toString()) < 4)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 9 && int.parse(rcvdData['peso'].toString()) < 15)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                  Image.asset('assets/images/Al-4.png'),
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
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 8 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Anos'|| (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                  Image.asset('assets/images/Al-11.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                      ],
                    ):((int.parse(rcvdData['peso'].toString()) > 69 && int.parse(rcvdData['peso'].toString()) < 90)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                      ],
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
                  ):Container(
                    height: 600,
                    child: (int.parse(rcvdData['idade'].toString()) < 6  && rcvdData['tipo_idade'].toString() == 'Meses' || int.parse(rcvdData['peso'].toString()) < 5) && int.parse(rcvdData['peso'].toString()) < 121?
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
                    ): ((int.parse(rcvdData['idade'].toString()) > 5 && int.parse(rcvdData['idade'].toString()) < 12)  && rcvdData['tipo_idade'].toString() == 'Meses' || (int.parse(rcvdData['peso'].toString()) > 4 && int.parse(rcvdData['peso'].toString()) < 10)) && int.parse(rcvdData['peso'].toString()) < 121?
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

                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 0 && int.parse(rcvdData['idade'].toString()) < 4)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 9 && int.parse(rcvdData['peso'].toString()) < 15)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                  Image.asset('assets/images/Al-4.png'),
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
                                  Image.asset('assets/images/Al-4.png'),
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

                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                      ],
                    ):((int.parse(rcvdData['idade'].toString()) > 3 && int.parse(rcvdData['idade'].toString()) < 9)  && rcvdData['tipo_idade'].toString() == 'Anos' || (int.parse(rcvdData['peso'].toString()) > 14 && int.parse(rcvdData['peso'].toString()) < 25)) && int.parse(rcvdData['peso'].toString()) < 121?
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                  Image.asset('assets/images/Al-9.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                  Image.asset('assets/images/Al-11.png'),
                                  Container(
                                      child: Positioned(
                                          bottom: 30,
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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
                                          child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center,)
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

                      ],
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
                  ),

                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            await flutterLocalNotificationsPlugin.zonedSchedule(
                0,
                'scheduled title',
                'scheduled body',
                tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
                const NotificationDetails(
                    android: AndroidNotificationDetails(
                        'full screen channel id', 'full screen channel name',
                        channelDescription: 'full screen channel description',
                        priority: Priority.high,
                        importance: Importance.high,
                        fullScreenIntent: true)),
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation:
                UILocalNotificationDateInterpretation.absoluteTime);
            Navigator.of(context).pushNamed(AppRoutes.CALENDAR, arguments: {"tipo": rcvdData['tipo'], "tratamento": rcvdData['tratamento']});
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.calendar_today),
        ),
      ),
    );
  }
}
