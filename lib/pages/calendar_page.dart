import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key? key}) : super(key: key);

  String get title => "Календарь";

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    var _currentDate = DateTime.now();
    var _focusedDate = _currentDate;


    return Container(
      child: Center(
        child: TableCalendar(
          firstDay: DateTime(2016, 1, 1),
          lastDay: DateTime(_currentDate.year + 1, 1, 1),
          focusedDay: _focusedDate,
        ),
      ),
    );
  }
}
