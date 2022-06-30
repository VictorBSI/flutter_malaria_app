import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_crud_1/routes/app_routes.dart';
import 'package:flutter_crud_1/views/trat_falciparum.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;

// To-Do: Trocar imagens 27/02/2022
class FalciparumGestante extends StatelessWidget {
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                    Image.asset(''),
                                    Container(
                                        child: Positioned(
                                            bottom: 30,
                                            child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                      Image.asset(''),
                                      Container(
                                          child: Positioned(
                                              bottom: 30,
                                              child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                      Image.asset(''),
                                      Container(
                                          child: Positioned(
                                              bottom: 30,
                                              child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
                                      Image.asset(''),
                                      Container(
                                          child: Positioned(
                                              bottom: 30,
                                              child: Text('Artemeter 20 mg + Lumefantrina 120 mg', textAlign: TextAlign.center, style: TextStyle(color: Colors.white))
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
        floatingActionButton: FloatingActionButton(
          onPressed: () async{
            await flutterLocalNotificationsPlugin.zonedSchedule(
                0,
                'Hora de tomar medicação',
                'Acesse o App Malária Amazônia para contabilizar',
                tz.TZDateTime.now(tz.local).hour > 12 && tz.TZDateTime.now(tz.local).hour <= 18 ? _jantar() : _almoco(),//tz.TZDateTime.now(tz.local).add(const Duration(seconds: 10)),
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
            Navigator.of(context).pushNamed(AppRoutes.CALENDAR_FALCIPARUM_GESTANTE, arguments: {"tipo": rcvdData['tipo'].toString(), "tratamento": rcvdData['tratamento'].toString()});
            //navigatorKey.currentState?.pushNamed(AppRoutes.CALENDAR, arguments: {"tipo": rcvdData['tipo'].toString(), "tratamento": rcvdData['tratamento'].toString()});
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.calendar_today),
        ),
      ),
    );
  }
}

tz.TZDateTime _almoco() {
  final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
  int startHour = 12;
  int day = 0;
  day = now.hour < startHour ? 0 : 1;
  tz.TZDateTime scheduledDate =
  tz.TZDateTime(tz.local, now.year, now.month, now.day, startHour);
  if (scheduledDate.isBefore(now)) {
    scheduledDate = scheduledDate.add(Duration(days: day));
  }
  return scheduledDate;
}

tz.TZDateTime _jantar(){
  final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
  int startHour = 18;
  int day = 0;
  day = now.hour < startHour ? 0 : 1;
  tz.TZDateTime scheduledDate =
  tz.TZDateTime(tz.local, now.year, now.month, now.day, startHour);
  if (scheduledDate.isBefore(now)) {
    scheduledDate = scheduledDate.add(Duration(days: day));
  }
  return scheduledDate;
}