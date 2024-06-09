import 'package:flutter/material.dart';

class Task05 extends StatelessWidget {
  const Task05({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 136,
                width: 360,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                         Color(0xffFFA8A8),
                         Color(0xffFCFF00),
                        ],
                        begin: AlignmentDirectional.topEnd,
                        end: AlignmentDirectional.bottomStart)),
              ),
              SizedBox(height: 16),
              Container(
                height: 136,
                width: 360,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff30CFD0),
                          Color(0xff330867),
                        ],
                        begin: AlignmentDirectional.centerStart,
                        end: AlignmentDirectional.centerEnd)),
              ),
              SizedBox(height: 16),
              Container(
                height: 136,
                width: 360,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff84FAB0),
                          Color(0xff8FD3F4),
                        ],
                        begin: AlignmentDirectional.centerStart,
                        end: AlignmentDirectional.centerEnd)),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
/*
echo "# flutter_101" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:Juma1988/flutter_101.git
git push -u origin main
 */