import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';


final kdarkGreen = Color(0xff136553);

final kCalendarStyle = CalendarStyle(
  selectedColor: Colors.deepOrange[400],
  todayColor: Colors.deepOrange[200],
  todayStyle: TextStyle(
    fontWeight: FontWeight.w900,
  ),
  markersColor: Colors.orange[400],
  outsideDaysVisible: false,
);

final kHeaderStyle = HeaderStyle(
  formatButtonTextStyle:
  TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
  formatButtonDecoration: BoxDecoration(
    color: Colors.deepOrange[400],
    borderRadius: BorderRadius.circular(16.0),
  ),
);

final kHeadlineStyle = GoogleFonts.robotoMono(
    fontWeight: FontWeight.w700,
    fontSize: 40,
);

const kSliderTheme = SliderThemeData(
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
  overlayColor: Color(0x29ffffff),
  activeTrackColor: Colors.blueGrey,
  thumbColor: Colors.blueGrey,
  inactiveTrackColor: Colors.grey,
);