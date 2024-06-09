import 'package:flutter/material.dart';

class Task03 extends StatelessWidget {
  const Task03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFC90808)),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFFD7E629),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
