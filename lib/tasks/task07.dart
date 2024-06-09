import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_navigator.dart';
import 'package:flutter_project101/core/app_theme.dart';



import 'view.dart';

class Task07 extends StatelessWidget {
  const Task07({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsetsDirectional.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('assets/images/task_task07_profile.png'),
              clipBehavior: Clip.antiAlias,
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(8)),
            ),
            SizedBox(height: 24),
            Text(
              'Nikolai Volkov',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  color: PrimaryColor),
            ),
            SizedBox(height: 45),
            Text(
              'Face ID is a facial Recognition feature which detects person from his face expressions to know if he has Psychiatric illness or not ',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.75),
                  fontWeight: FontWeight.w400,
                  fontSize: 16),
            ),
            SizedBox(height: 90),
            Container(
                width: double.infinity,
                child: FilledButton(
                    onPressed: () {
                      AppGoto(TaskView());
                    },
                    child: Text('Get Started')))
          ],
        ),
      ),
    );
  }
}
