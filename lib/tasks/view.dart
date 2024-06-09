import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_image.dart';
import 'package:flutter_project101/core/app_navigator.dart';
import 'task01.dart';
import 'task02.dart';
import 'task03.dart';
import 'task04.dart';
import 'task05.dart';
import 'task06.dart';
import 'task07.dart';
import 'task08.dart';
import 'task09.dart';
import 'task10.dart';
import 'task11.dart';
import 'task12.dart';
import 'task13.dart';

List<Widget> name = [
  Task01(),
  Task02(),
  Task03(),
  Task04(),
  Task05(),
  Task06(),
  Task07(),
  Task08(),
  Task09(),
  Task10(),
  Task11(),
  Task12(),
  Task13(),
];

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
                child: AppImage(
              "task_view_background.jpg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            )),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white.withOpacity(0.2),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 50 / 20),
              padding: EdgeInsets.all(16),
              itemCount: name.length,
              itemBuilder: (context, index) => FilledButton(
                  onPressed: () {
                    AppGoto(name[index]);
                  },
                  child: Text('Task ${index + 1}')),
            )
          ],
        ),
      ),
    );
  }
}
