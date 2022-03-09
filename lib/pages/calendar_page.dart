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

          selectedDayPredicate: (date) {
            return isSameDay(_selectedDay, date);
          },
          onDaySelected: (selectedDay, focusedDay) {
            setState(() {
              _selectedDay = selectedDay;
            });
          },

          daysOfWeekStyle: const DaysOfWeekStyle(
            weekendStyle: TextStyle(color: Colors.red),
          ),
          headerStyle: const HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
          ),

          calendarBuilders: CalendarBuilders(
            prioritizedBuilder: (context, day, focusedDay) {
              //TODO: get color from event status;
              var eventColor =Colors.blue;
              var isEvent = _events.any((element) => isSameDay(element, day));
              var isBefore = day.isBefore(_currentDay);
              var isCurrentMonth = day.month == focusedDay.month;

              return Container(
                // Selected day decoration
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSameDay(day, focusedDay)
                      ? Colors.lightBlue[100]
                      : null,
                ),
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.all(2),
                child: Container(
                  // Event day decoration
                  decoration: (isCurrentMonth & isEvent)
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: eventColor, width: 2),
                          // Fill passed events
                          color: isBefore ? eventColor : null,
                        )
                      : const BoxDecoration(shape: BoxShape.circle),
                  child: Center(
                    // Day cell data
                    child: Text(day.day.toString(),
                        style: TextStyle(
                          fontSize: isSameDay(day, _currentDay) ? 20 : 16,
                          fontWeight: isSameDay(day, _currentDay)
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: isCurrentMonth ? Colors.black : Colors.grey,
                        )),
                  ),
                ),
              );
            },
            //TODO: add custom header- and dow- builders
            // headerTitleBuilder: (context, day) {
            //   return Center(
            //     child: Text(widget._monthNames[day.month-1]),
            //   );
            // },
          ),
        ),
      ),
    );
  }
}
