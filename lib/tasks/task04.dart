import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_image.dart';

class Task04 extends StatelessWidget {
  const Task04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Color(0xff05A59B),
              Color(0xff000000),
            ],
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd)),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElasticIn(child: AppImage("task_task04_music_icon.png")),
              ElasticIn(
                child: Text(
                  'Music',
                  style: TextStyle(
                      fontSize: 50,
                      color: Color(0xffFFFFFF),
                      fontFamily: 'JotiOneFont'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
