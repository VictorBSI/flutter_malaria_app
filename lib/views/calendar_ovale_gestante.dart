import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:flutter_crud_1/views/trat_falciparum.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:get/get.dart';

class CalendarOvaleGestante extends StatefulWidget{
  @override
  State<CalendarOvaleGestante> createState() => _CalendarState();
}

class _CalendarState extends State<CalendarOvaleGestante> {
  late MeetingDataSource _events;
  late List<Appointment> _shiftCollection;

  late List<CalendarResource> _employeeCalendarResource;
  late List<TimeRegion> _specialTimeRegions;
  //var nameCollection = [];

  @override
  void initState() {
    addResourceDetails();
    addAppointments();
    addSpecialRegions();

    //_events = MeetingDataSource(_shiftCollection, _employeeCalendarResource);
    MeetingDataSource(_shiftCollection, _employeeCalendarResource);
    super.initState();
  }
  bool isChecked = false;

  String? _subjectText = '',
      _startTimeText = '',
      _endTimeText = '',
      _dateText = '',
      _timeDetails = '',
      _calendar = '';
  Color? _headerColor, _viewHeaderColor, _calendarColor;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SfCalendar(
              initialDisplayDate: DateTime.now(),
              //DateTime(2022, 06, 18, 09, 00),
              view: CalendarView.timelineWeek,
              firstDayOfWeek: 6,
              timeSlotViewSettings:
              TimeSlotViewSettings(startHour: 9, endHour: 20),
              dataSource: MeetingDataSource(_shiftCollection, _employeeCalendarResource),//_events,
              specialRegions: _specialTimeRegions,
              onTap: calendarTapped,
            ),
        ]
    ),

    )
    );



  }

  void calendarTapped(CalendarTapDetails details) {
    bool isChecked = false;
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    if (details.targetElement == CalendarElement.appointment ||
        details.targetElement == CalendarElement.agenda) {
      final Appointment appointmentDetails = details.appointments![0];
      final CalendarResource calendarDetails = details.resource!;
      _subjectText = appointmentDetails.subject;
      _calendar = calendarDetails.displayName;
      _dateText = DateFormat('MMMM dd, yyyy')
          .format(appointmentDetails.startTime)
          .toString();
      _startTimeText =
          DateFormat('hh:mm a').format(appointmentDetails.startTime).toString();
      _endTimeText =
          DateFormat('hh:mm a').format(appointmentDetails.endTime).toString();
      if (appointmentDetails.isAllDay) {
        _timeDetails = 'All day';
      } else {
        _timeDetails = '$_startTimeText - $_endTimeText';
      }
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Container(child: new Text('$_subjectText')),
              content: Container(
                height: 80,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Você tomou ' + '$_calendar',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),

                        /*ListView(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              fillColor: MaterialStateProperty.resolveWith(getColor),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              },
                            )
                          ],
                        ),*/

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('')
                        /*Text(
                          '$_dateText',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),*/
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text('Às ' + DateFormat('hh:mm a').format(DateTime.now().toLocal()).toString(),//_timeDetails!,
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15)),
                      ],
                    ),
                    /*Row(
                      children: <Widget>[
                        Text(''),
                      ],
                    ),*/
                    Row(
                      children: <Widget>[
                        Container(
                          height: 10,
                          width: 10,
                          padding: EdgeInsets.only(left: 200,),
                          child: Icon(Icons.alarm_on_outlined)
                        )
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                new TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: new Text('Fechar'))
              ],
            );
          });
    }
  }



    void addAppointments() {

      var subjectCollection = [
        'General Meeting',
        'Plan Execution',
        'Project Plan',
        'Consulting',
        'Support',
        'Development Meeting',
        'Scrum',
        'Project Completion',
        'Release updates',
        'Performance Check'
      ];

      var colorCollection = [
        const Color(0xFF0F8644),
        const Color(0xFF8B1FA9),
        const Color(0xFFD20100),
        const Color(0xFFFC571D),
        const Color(0xFF85461E),
        const Color(0xFF36B37B),
        const Color(0xFF3D4FB5),
        const Color(0xFFE47C73),
        const Color(0xFF636363)
      ];

      _shiftCollection = <Appointment>[];
      for (var calendarResource in _employeeCalendarResource) {
        var employeeIds = [calendarResource.id];

        //for (int j = 0; j < 4; j++) {
        //for (int k = 0; k < 3; k++) {
        final DateTime date = DateTime.now(); //.add(Duration(days: 3));
        int startHour = 12; //9 + Random().nextInt(6) ;
        //startHour =
        //startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
        final DateTime _shiftStartTime =
        DateTime(date.year, date.month, date.day, startHour, 0, 0);
        _shiftCollection.add(Appointment(
            startTime: _shiftStartTime,
            endTime: _shiftStartTime.add(Duration(hours: 1)),
            subject: 'Tomar Medicação',
            // subjectCollection[Random().nextInt(8)],
            color: colorCollection[Random().nextInt(8)],
            startTimeZone: '',
            endTimeZone: '',
            recurrenceRule: 'FREQ=DAILY;COUNT=3',
            resourceIds: employeeIds,
        ), );
        int jantarStartHour = 18;
        final DateTime _jantarStartTime =
        DateTime(date.year, date.month, date.day, jantarStartHour, 0, 0);
        _shiftCollection.add(Appointment(
            startTime: _jantarStartTime,
            endTime: _jantarStartTime.add(Duration(hours: 1)),
            subject: 'Tomar Medicação',
            // subjectCollection[Random().nextInt(8)],
            color: colorCollection[Random().nextInt(8)],
            startTimeZone: '',
            endTimeZone: '',
            recurrenceRule: 'FREQ=DAILY;COUNT=3',
            resourceIds: employeeIds
        ));
        // }
        //}
      }
    }

    void addResourceDetails() {

      var nameCollection = ['Medicação'];

      var userImages = [
        'images/People_Circle5.png',
        'images/People_Circle8.png',
        'images/People_Circle18.png',
        'images/People_Circle23.png',
        'images/People_Circle25.png',
        'images/People_Circle20.png',
        'images/People_Circle13.png',
        'images/People_Circle11.png',
        'images/People_Circle27.png',
        'images/People_Circle26.png',
        'images/People_Circle24.png',
        'images/People_Circle15.png',
      ];

      _employeeCalendarResource = <CalendarResource>[];
     /* for (var i = 0; i < nameCollection.length; i++) {
      _employeeCalendarResource.add(CalendarResource(
          id: '000' + i.toString(),
          displayName: nameCollection[i],
          color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
              Random().nextInt(255), 1),
          image:
          i < userImages.length ? ExactAssetImage('assets/images/Al-1.png') : null));
    }*/

      for (var i = 0; i < nameCollection.length; i++) {
        _employeeCalendarResource.add(CalendarResource(
            id: '000' + i.toString(),
            displayName: nameCollection[i],
            color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
                Random().nextInt(255), 1),
            image: ExactAssetImage('assets/images/pill.png')));
        //i < userImages.length ? ExactAssetImage('assets/images/Al-1.png') : null));
      }
      if(DateTime.now().hour >= 12 && DateTime.now().hour < 18) {
        FlutterAlarmClock.createAlarm(18, 00);
      } else {
        FlutterAlarmClock.createAlarm(12, 00);
      }
    }

    void addSpecialRegions() {
      final DateTime date = DateTime.now();
      _specialTimeRegions = [
        TimeRegion(
            startTime: DateTime(date.year, date.month, date.day, 13, 0, 0),
            endTime: DateTime(date.year, date.month, date.day, 14, 0, 0),
            text: 'Almoço',
            resourceIds: _employeeCalendarResource.map((e) => e.id).toList(),
            recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
            enablePointerInteraction: false,),
        TimeRegion(
            startTime: DateTime(date.year, date.month, date.day, 19, 0, 0),
            endTime: DateTime(date.year, date.month, date.day, 20, 0, 0),
            text: 'Jantar',
            resourceIds: _employeeCalendarResource.map((e) => e.id).toList(),
            recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
            enablePointerInteraction: false),
      ];
    }
  }

  List<Appointment> getAppointments() {
    List<Appointment> meetings = <Appointment>[];
    final DateTime today = DateTime.now();
    int startHour = 9 + Random().nextInt(6);
    startHour =
    startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
    final DateTime startTime = DateTime(
        today.year, today.month, today.day, startHour, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 1));

    meetings.add(Appointment(
        startTime: startTime,
        endTime: endTime,
        subject: 'Lunch',
        color: Colors.blue,
        recurrenceRule: 'FREQ=DAILY;COUNT=3'
    ));
    return meetings;
  }

/*
class MeetingDataSource extends CalendarDataSource{
  MeetingDataSource(List<Appointment> source){
    appointments = source;
  }
}*/

  class MeetingDataSource extends CalendarDataSource{
  MeetingDataSource(List<Appointment> shiftCollection,
  List<CalendarResource> employeeCalendarResource) {
  appointments = shiftCollection;
  resources = employeeCalendarResource;
  }
  }
