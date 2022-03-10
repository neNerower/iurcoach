import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/conf/mocks/event_mocks.dart';
import 'package:iurc_mobile_app/models/training_model.dart';
import 'package:iurc_mobile_app/widgets/training_preview.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatefulWidget {
  CalendarPage({Key? key}) : super(key: key);

  String get title => "Календарь";

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  var _selectedDay = DateTime.now();
  final Map<DateTime, TrainingModel> _events = {};

  @override
  void initState() {
    super.initState();

    for (var event in EventMocks.events) {
      _events[DateTime(
        event.dateTime.year,
        event.dateTime.month,
        event.dateTime.day,
      )] = event;
    }
  }

  bool _isEventDay(DateTime day) {
    return _events.containsKey(DateTime(day.year, day.month, day.day));
  }

  @override
  Widget build(BuildContext context) {
    var _currentDay = DateTime.now();

    return Column(
      children: [
        TableCalendar(
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
              var eventColor = Colors.blue;
              var isBefore = day.isBefore(_currentDay);
              var isCurrentMonth = day.month == focusedDay.month;

              return Container(
                // Selected day decoration
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isSameDay(day, _selectedDay)
                      ? Colors.lightBlue[100]
                      : null,
                ),
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.all(2),
                child: Container(
                  // Event day decoration
                  decoration: (isCurrentMonth & _isEventDay(day))
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: eventColor, width: 2),
                          // Fill passed events
                          color: isBefore ? eventColor : null,
                        )
                      : const BoxDecoration(shape: BoxShape.circle),
                  child: Center(
                    // Day cell data
                    child: Text(
                      day.day.toString(),
                      style: TextStyle(
                        fontSize: isSameDay(day, _currentDay) ? 20 : 16,
                        fontWeight: isSameDay(day, _currentDay)
                            ? FontWeight.bold
                            : FontWeight.normal,
                        color: isCurrentMonth ? Colors.black : Colors.grey,
                      ),
                    ),
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
        const Divider(
          height: 40,
          indent: 20,
          endIndent: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: _isEventDay(_selectedDay)
              ? TrainingPreview(
                  model: _events[DateTime(
                      _selectedDay.year, _selectedDay.month, _selectedDay.day)]!)
              : Container(),
        ),
      ],
    );
  }
}
