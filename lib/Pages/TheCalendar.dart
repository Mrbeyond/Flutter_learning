import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/Pacer.dart';
import 'package:table_calendar/table_calendar.dart';

class TheCalendar extends StatefulWidget {
  @override
  _TheCalendarState createState() => _TheCalendarState();
}

class _TheCalendarState extends State<TheCalendar> {
  CalendarController _calendarController;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }
  
  String _simpleDate(DateTime date){
    return "${date.year}/${date.month}/${date.day}";
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Pacer("The Calender"),
        TableCalendar(
          events: {DateTime.utc(2021, 07, 11): ["Yk birthday", "Must message"]},
          startDay: DateTime.parse("2021-06-10"),
          calendarController: _calendarController,
          initialCalendarFormat: CalendarFormat.month,
          calendarStyle: CalendarStyle(
            todayColor: Colors.blue,
            selectedColor: Theme.of(context).primaryColor,
            todayStyle: TextStyle(
              fontSize: 21.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )
          ),
          headerStyle: HeaderStyle(
            centerHeaderTitle: true,
            formatButtonShowsNext: false,
            formatButtonTextStyle: TextStyle(color: Colors.white),
            formatButtonDecoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20.0),
            )
          ),
          startingDayOfWeek: StartingDayOfWeek.sunday,
          onDaySelected: (date, events, last){
            print(date.toUtc());
            print(events);
            print(last);
            if (events.length > 0){
              return  showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text(
                      "Event(s) for ${_simpleDate(date)}",
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    content: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(events.length, (int i){
                        return Text(
                          "${i+1}: ${events[i]}",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 20.0,
                          ) ,
                        );
                      }),
                    ),
                  );
                }
              );
            }

          },
          builders: CalendarBuilders(
            selectedDayBuilder: (context, date, events){
               return Container(
                 margin: EdgeInsets.all(5.0),
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   color: Theme.of(context).primaryColor,
                   borderRadius: BorderRadius.circular(8.0),
                 ),
                 child: Text(
                   date.day.toString(),
                   style: TextStyle(color: Colors.white),
                 ),
               );
            },
            todayDayBuilder: (context, date, events){
              return Container(
                margin: EdgeInsets.all(5.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  date.day.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        )

      ],
    );
  }
}
