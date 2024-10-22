import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../constants/text_color.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({Key? key}) : super(key: key);

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'My Weekly Tasks',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 13.0,
                  color: CustomTextStyles.mainColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '15 Tasks Pending',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 10.0,
                  color: CustomTextStyles.mainColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Icon(FlutterIcons.list_mdi,
                  size: 20, color: CustomTextStyles.mainColor),
              const SizedBox(width: 20.0),
              const Icon(FlutterIcons.search1_ant,
                  size: 20, color: CustomTextStyles.mainColor),
              const SizedBox(width: 20.0),
              Container(
                height: 25,
                width: 1,
                color: CustomTextStyles.grey,
              ),
              const SizedBox(width: 20.0),
              const Icon(FlutterIcons.add_mdi,
                  size: 30, color: CustomTextStyles.mainColor),
            ],
          )
        ],
      ),
    );
  }
}
