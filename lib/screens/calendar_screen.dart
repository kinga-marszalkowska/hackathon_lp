import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:projektzpss/models/avatar_model.dart';
import 'package:projektzpss/models/calendar_model.dart';
import 'package:projektzpss/screens/avatar_painter.dart';
import 'package:projektzpss/screens/hours.dart';
import 'package:projektzpss/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalendarModel(),
      child: Consumer<CalendarModel>(builder: (context, calendarModel, child) {
        return Scaffold(
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: GestureDetector(
                        onHorizontalDragDown: (drag){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Text(
                              'Coded ${calendarModel.totalHoursCount} h',
                              style: kHeadlineStyle.copyWith(color: Colors.deepOrange[300]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              Expanded(
                flex: 2,
                child: TableCalendar(
                  calendarController: calendarModel.calendarController,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  calendarStyle: kCalendarStyle,
                  headerStyle: kHeaderStyle,
                  events: calendarModel.events,
                  builders: CalendarBuilders(),
                  onDayLongPressed: (date, list) {
                    calendarModel.showBottomSheet(context);
                  },
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

}
