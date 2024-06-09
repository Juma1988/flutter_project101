import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_image.dart';
import 'package:flutter_project101/core/app_theme.dart';


class Task13 extends StatefulWidget {
  const Task13({super.key});

  @override
  State<Task13> createState() => _Task13State();
}

class _Task13State extends State<Task13> {
  final monthNumberController = TextEditingController();

  final List list = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August','September', 'October', 'November', "December"];


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                AppImage(
                  'task_task13_image.png',
                  height: 300,
                  width: 300,
                ),
                SizedBox(height: 32),
                TextFormField(
                  //controller: widget.controller,
                  decoration: InputDecoration(
                    label: Text('رقم الشـهـر'),
                    labelStyle: TextStyle(
                      color: PrimaryColor.withOpacity(0.8),
                    ),
                    floatingLabelStyle: TextStyle(color: PrimaryColor),
                  ),
                  autocorrect: false,
                  enabled: true,
                  keyboardType: TextInputType.numberWithOptions(),
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                ),
                SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      //int number = int.tryParse(widget.controller.text) ?? 0;
                      //if (number > 0 && number < 13) {
                      //  selectedMonth = list[number - 1];
                      // } else {
                      //   selectedMonth = 'Invalided Month';
                      //  }
                      setState(() {});
                    },
                    child: Text('أحصل علي النتيجة'),
                  ),
                ),
                SizedBox(height: 32),
                // if (selectedMonth != null)
                Text('الشهر هو ')],
            ),
          )),
    );
  }
}

