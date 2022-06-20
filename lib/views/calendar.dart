import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget{
  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>{
  late MeetingDataSource _events;
  late List<Appointment> _shiftCollection;

  late List<CalendarResource> _employeeCalendarResource;
  late List<TimeRegion> _specialTimeRegions;

  @override
  void initState(){
    addResourceDetails();
    addAppointments();
    addSpecialRegions();
    _events = MeetingDataSource(_shiftCollection, _employeeCalendarResource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SfCalendar(
        /*view: CalendarView.week,
        firstDayOfWeek: 6,
        //initialDisplayDate: DateTime(2022, 06, 16, 09, 00),
        //initialSelectedDate: DateTime(2022, 06, 16, 09, 00),
        dataSource: MeetingDataSource(getAppointments()),*/
          initialDisplayDate: DateTime(2022, 06, 18, 09, 00),
          view: CalendarView.timelineWeek,
          firstDayOfWeek: 6,
          timeSlotViewSettings:
          TimeSlotViewSettings(startHour: 9, endHour: 20),
          dataSource: _events,
          specialRegions: _specialTimeRegions
      ),
    );
  }

  void addAppointments(){
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
          final DateTime date = DateTime.now();//.add(Duration(days: 3));
          int startHour = 12;//9 + Random().nextInt(6) ;
          startHour =
          startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
          final DateTime _shiftStartTime =
          DateTime(date.year, date.month, date.day, startHour, 0, 0);
          _shiftCollection.add(Appointment(
              startTime: _shiftStartTime,
              endTime: _shiftStartTime.add(Duration(hours: 1)),
              subject:'Tomar Medicação',// subjectCollection[Random().nextInt(8)],
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
    var nameCollection = [
      'John',
      'Bryan',
      /*'Robert',
      'Kenny',
      'Tia',
      'Theresa',
      'Edith',
      'Brooklyn',
      'James William',
      'Sophia',
      'Elena',
      'Stephen',
      'Zoey Addison',
      'Daniel',
      'Emilia',
      'Kinsley Elena',
      'Danieals',
      'William',
      'Addison',
      'Ruby'*/
    ];

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
    /*for (var i = 0; i < nameCollection.length; i++) {
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
          image: ExactAssetImage('assets/images/Al-1.png')));
         //i < userImages.length ? ExactAssetImage('assets/images/Al-1.png') : null));
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
          enablePointerInteraction: false),
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

List<Appointment> getAppointments(){
  List<Appointment> meetings = <Appointment>[];
  final DateTime today = DateTime.now();
  int startHour = 9 + Random().nextInt(6);
  startHour =
  startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
  final DateTime startTime = DateTime(today.year, today.month, today.day, startHour, 0, 0);
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