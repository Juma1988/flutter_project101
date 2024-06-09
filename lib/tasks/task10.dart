import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_image.dart';
import 'package:flutter_project101/core/app_navigator.dart';
import 'package:flutter_project101/core/app_theme.dart';

import 'view.dart';

class Task10 extends StatelessWidget {
  const Task10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
              child: AppImage(
            'task_task10_image.png',
            height: 430,
            width: double.infinity,
                fit: BoxFit.cover,
          )),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'احجز فندك بسهولة',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 16),
                Text(
                  'اطلالات ساحرة لفصل الصيف',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: PrimaryColor.withOpacity(0.2),
                      radius: 5,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: PrimaryColor,
                      radius: 5,
                    ),
                    SizedBox(width: 8),
                    CircleAvatar(
                      backgroundColor: PrimaryColor.withOpacity(0.2),
                      radius: 5,
                    ),
                  ],
                ),
                SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      AppGoto(TaskView());
                    },
                    child: Text(
                      "متابعة",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      AppGoto(TaskView());
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      side: BorderSide(color: PrimaryColor, width: 2),
                      // Text color
                      backgroundColor:
                          Colors.transparent, // Transparent background
                    ),
                    child: Text(
                      "تخطي",
                      style: TextStyle(
                          color: PrimaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*
          OutlinedButton(onPressed: () {}, child:  ,
              ))
 */
