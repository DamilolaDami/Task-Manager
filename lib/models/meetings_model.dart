import 'package:flutter/material.dart';
import 'package:taskmanager/constants/images.dart';

class MeetingsModel {
  final String title;
  final String date;
  final String? iconImagePath;
  final Color calendarEventColor;
  final List<dynamic>? participants;
  final String time;

  MeetingsModel(
      {required this.title,
      required this.date,
      required this.calendarEventColor,
      this.iconImagePath,
      this.participants,
      required this.time});
}

List meetingss = [
  MeetingsModel(
      title: 'Interactive Session with John Doe',
      calendarEventColor: const Color(0xFFEA748E),
      time: '12 \nAM',
      participants: [
        userImage,
        person1,
      ],
      iconImagePath: zoomImage,
      date: 'Today 12:00 AM - 1:00 AM'),
  MeetingsModel(
      title: 'Growth Session with Apple Music Inc.',
      participants: [
        userImage,
        apple,
        person2,
      ],
      time: '2 \nAM',
      calendarEventColor: const Color(0xFFCACE91),
      iconImagePath: googleMeet,
      date: 'Today 3:15 AM - 4:15:00 AM'),
  MeetingsModel(
      title: 'Stories Design with Facebook',
      participants: [
        userImage,
        facebook,
        messenger,
        person2,
        person3,
      ],
      calendarEventColor: const Color(0xFFEA748E),
      time: '2 \nPM',
      iconImagePath: messenger,
      date: 'Today 5:30 AM - 6:30 AM'),
  MeetingsModel(
      participants: [
        userImage,
        facebook,
        messenger,
      ],
      title: 'Cloud Computing Session with Amazon',
      calendarEventColor: const Color.fromARGB(255, 144, 116, 234),
      time: '4 \nPM',
      iconImagePath: zoomImage,
      date: 'Today 10:00 AM - 11:00 AM'),
];
