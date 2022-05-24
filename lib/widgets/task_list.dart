import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/models/task_model.dart';
import 'package:taskmanager/widgets/pinned_task_widget.dart';
import 'package:taskmanager/widgets/taskwidget.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ListView(scrollDirection: Axis.horizontal, children: [
        const PinnedTaskWidget(),
        const SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0,
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return TaskWidget(
                task: tasks[index],
              );
            },
          ),
        )
      ]),
    );
  }
}
