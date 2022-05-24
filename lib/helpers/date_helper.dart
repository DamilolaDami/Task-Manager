import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var day = DateFormat.EEEE().format(date);

class DateHelper {
  static List dates = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18',
    '19',
    '20',
    '21',
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
    '29',
    '30',
    '31',
  ];
  static List calendarTime = [
    '12 \nAM',
    '1 \nAM',
    '2 \nAM',
    '3 \nAM',
    '4 \nAM',
    '5 \nAM',
    '6 \nAM',
    '7 \nAM',
    '8 \nAM',
    '9 \nAM',
    '10 \nAM',
    '11 \nAM',
    '12 \nPM',
    '1 \nPM',
    '2 \nPM',
    '3 \nPM',
    '4 \nPM',
    '5 \nPM',
    '6 \nPM',
    '7 \nPM',
    '8 \nPM',
    '9 \nPM',
    '10 \nPM',
    '11 \nPM',
  ];
  static bool isToday(int day) {
    return day == DateTime.now().day;
  }

  static String getDayName(DateTime date) {
    if (day == 'Sunday') {
      return day.replaceAll('day', '');
    } else if (day == 'Monday') {
      return day.replaceAll('day', '');
    } else if (day == 'Tuesday') {
      return day.replaceAll('sday', '');
    } else if (day == 'Wednesday') {
      return day.replaceAll('nesday', '');
    } else if (day == 'Thursday') {
      return day.replaceAll('rsday', '');
    } else if (day == 'Friday') {
      return day.replaceAll('day', '');
    } else if (day == 'Saturday') {
      return day.replaceAll('urday', '');
    }
    return day;
  }

  static List<dynamic> listofalldaysinamonth(DateTime month) {
    return dates;
  }

  static String getMonthName(DateTime date) {
    return DateFormat.MMMM().format(date);
  }

  static String getDayNumberSuffix(DateTime date) {
    if (date.day == 1 || date.day == 21 || date.day == 31) {
      return 'st';
    } else if (date.day == 2 || date.day == 22) {
      return 'nd';
    } else if (date.day == 3 || date.day == 23) {
      return 'rd';
    } else {
      return 'th';
    }
  }
}

int year = DateTime.now().year;
int month = DateTime.now().month;
DateTime date = DateTime.now();

var now = DateFormat("MMMM").format(date);
TimeOfDay timeampm = TimeOfDay.now();

final String dateToday = year.toString() + ' ' + now;
String time(BuildContext context) {
  return timeampm.format(context);
}

Stream timer = Stream.periodic(const Duration(seconds: 1), (i) {
  date = date.add(const Duration(seconds: 1));

  return date;
}).asBroadcastStream();

List days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
