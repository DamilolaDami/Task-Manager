import 'package:flutter/material.dart';

import '../widgets/calendar.dart';
import '../widgets/calendar_appbar.dart';
import '../widgets/calendar_widget.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 26.0, vertical: 25.0),
            child: Column(
              children: const [
                CalendarAppBar(),
                SizedBox(
                  height: 4,
                ),
                CalendarDaysWidget(),
                SizedBox(
                  height: 4,
                ),
                Calendar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
