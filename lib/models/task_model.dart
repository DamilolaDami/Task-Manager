import 'package:flutter/material.dart';
import 'package:taskmanager/constants/text_color.dart';

import '../constants/images.dart';

class TaskListModel {
  final String title;
  final String date;
  final String? iconImagePath;
  final Color color;

  TaskListModel(
      {required this.title,
      required this.date,
      this.iconImagePath,
      required this.color});
}

List<TaskListModel> tasks = [
  TaskListModel(
      title: 'Go for hiking in the mountains',
      date: 'Feb 24',
      iconImagePath: hiking2,
      color: const Color(0xFFB8C1EC)),
  TaskListModel(
      title: 'Dribble NFT Landing Page shot',
      date: 'Feb 04',
      iconImagePath: dribble,
      color: const Color(0xFFFF5470)),
  TaskListModel(
      title: 'Go for hiking',
      date: 'Feb 24',
      iconImagePath: cireclesmall,
      color: CustomTextStyles.green),
  TaskListModel(
      title: 'Dribble NFT Landing Page shot',
      date: 'Feb 04',
      iconImagePath: cireclesmall,
      color: const Color(0xFF31BBF6)),
  TaskListModel(
      title: 'Go for hiking',
      date: 'Feb 24',
      iconImagePath: cireclesmall,
      color: const Color(0xFFB8C1EC)),
  TaskListModel(
      title: 'Dribble NFT Landing Page shot',
      date: 'Feb 04',
      iconImagePath: cireclesmall,
      color: const Color(0xFFFF5470)),
  TaskListModel(
      title: 'Go for hiking',
      date: 'Feb 24',
      iconImagePath: cireclesmall,
      color: const Color(0xFFB8C1EC)),
  TaskListModel(
      title: 'Dribble NFT Landing Page shot',
      date: 'Feb 04',
      iconImagePath: cireclesmall,
      color: const Color(0xFFFF5470)),
  TaskListModel(
      title: 'Go for hiking',
      date: 'Feb 24',
      iconImagePath: cireclesmall,
      color: const Color(0xFFB8C1EC)),
  TaskListModel(
      title: 'Dribble NFT Landing Page shot',
      date: 'Feb 04',
      iconImagePath: cireclesmall,
      color: const Color(0xFFFF5470)),
  TaskListModel(
      title: 'Go for hiking',
      date: 'Feb 24',
      iconImagePath: cireclesmall,
      color: const Color(0xFFB8C1EC)),
  TaskListModel(
      title: 'Dribble NFT Landing Page shot',
      date: 'Feb 04',
      iconImagePath: cireclesmall,
      color: const Color(0xFFFF5470)),
];
