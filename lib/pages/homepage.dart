import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/meetings_widget.dart';
import '../widgets/task_list.dart';
import '../widgets/taskmanager.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomAppBar(),
            const TaskManager(),
            SizedBox(
                height: 350,
                width: MediaQuery.of(context).size.width,
                child: const TaskList()),
            const SizedBox(height: 30),
            const MeetingsWidget(),
          ]),
        ),
      )),
    );
  }
}
