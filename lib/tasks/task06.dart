
import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_navigator.dart';
import 'package:flutter_project101/core/app_theme.dart';

import 'view.dart';

class Task06 extends StatelessWidget {
  const Task06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [SizedBox(width: 60), Text('Select User Type')]),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsDirectional.all(16),
        child: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(

                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      color: PrimaryColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/images/task_task06_profile01.png",
                        height: 95,
                        width: 75,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60),
                InkWell(
                  onTap: (){},
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      color: PrimaryColor.withOpacity(0.05),
                    ),
                    child: Center(
                      child: Image.asset(
                        "assets/images/task_task06_profile02.png",
                        height: 95,
                        width: 75,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 90),
                Container(
                  width: double.infinity,
                  child: FilledButton(
                      onPressed: () {
                        AppGoto(TaskView());
                        },
                      child: Text("Next")),
                )
              ]),
        ),
      ),
    );
  }
}
