import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key? key}) : super(key: key);
  
  String get title => "Календарь";

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  var _currentDay = DateTime.now();
  var _selectedDay = DateTime.now();

  final _events = [
    DateTime(2022, 3, 2),
    DateTime(2022, 3, 3),
    DateTime(2022, 3, 4),
    DateTime(2022, 3, 5),
    DateTime(2022, 3, 19),
    DateTime(2022, 3, 22),
    DateTime(2022, 3, 24),
    DateTime(2022, 3, 26),
    DateTime(2022, 3, 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TableCalendar(
          firstDay: DateTime(_currentDay.year - 2, 1, 1),
          lastDay: DateTime(_currentDay.year, 12, 31),
          focusedDay: _selectedDay,

          calendarFormat: CalendarFormat.month,
          startingDayOfWeek: StartingDayOfWeek.monday,

          // selectedDayPredicate: (date) {
          //   return isSameDay(_selectedDay, date);
          // },
          // onDaySelected: (newSelected, oldSelected) {
          //   if (isSameDay(newSelected, oldSelected)){
          //     setState(() {
          //       _selectedDay = newSelected;
          //     });
          //   }
          // },

          daysOfWeekStyle: const DaysOfWeekStyle(
            weekendStyle: TextStyle(color: Colors.red),
          ),
          headerStyle: HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
          ),

          calendarBuilders: CalendarBuilders(
            prioritizedBuilder: (context, day, focusedDay) {
              //TODO: get color from event status;
              var containerColor =
                  _events.any((element) => isSameDay(element, day))
                      ? Colors.blue
                      : Colors.white;
              var isBefore = day.isBefore(focusedDay);
              var isCurrentMonth = day.month == focusedDay.month;

              return Container(
                decoration: isCurrentMonth
                    ? BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: containerColor, width: 2),
                        color: isBefore ? containerColor : null,
                      )
                    : BoxDecoration(shape: BoxShape.circle),
                margin: EdgeInsets.all(8),
                child: Center(
                  child: Text(day.day.toString(),
                      style: TextStyle(
                        fontSize: isSameDay(day, focusedDay) ? 20 : 16,
                        fontWeight: isSameDay(day, focusedDay)
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: isCurrentMonth ? Colors.black : Colors.grey,
                      )),
                ),
              );
            },
            // headerTitleBuilder: (context, day) {
            //   return Center(
            //     child: Text(widget._monthNames[day.month-1]),
            //   );
            // },
          ),

          // calendarStyle: const CalendarStyle(
          //   weekendTextStyle: TextStyle(color: Colors.red),
          //   todayTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //   todayDecoration: BoxDecoration(
          //     shape: BoxShape.circle,
          //   ),
          //   selectedTextStyle: ,
          //   selectedDecoration: BoxDecoration(
          //     color: Colors.blueGrey,
          //     shape: BoxShape.circle,
          //   ),
          // ),
        ),
      ),
    );
  }
}
