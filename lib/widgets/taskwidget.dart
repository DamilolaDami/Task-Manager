import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../models/task_model.dart';

class TaskWidget extends StatelessWidget {
  final TaskListModel task;
  const TaskWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
              right: -45,
              top: 10,
              child: SizedBox(
                height: 100,
                child: Image.asset(
                  task.iconImagePath ?? '',
                  color: Colors.black.withOpacity(0.1),
                  scale: 3,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Center(
                    child: Image.asset(
                      task.iconImagePath ?? '',
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(task.title,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          FlutterIcons.calendar_ant,
                          size: 14,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(task.date,
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: 10.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      child: const Center(
                          child: Center(
                        child: Icon(
                          Icons.more_vert,
                          size: 10,
                          color: Colors.white,
                        ),
                      )),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: task.color,
      ),
    );
  }
}
