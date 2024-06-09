
import 'package:flutter/material.dart';

class Task11 extends StatelessWidget {
  const Task11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(color: Color(0xFF3AD912),height:250 ,width: double.infinity,),
          SizedBox(height: 44),
          Container(color: Color(0xFFC01010),height:68 ,width: double.infinity,),
          SizedBox(height: 44),
          Container(color: Color(0xFF1041C0),height:68 ,width: 300,),
          SizedBox(height: 44),
          Container(color: Color(0xFFA00000),height:68 ,width: 75,),
          SizedBox(height: 44),
          Text('\t\t\tIbrahim',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24),),
          SizedBox(height: 44),
          Container(color: Color(0xFF1041C0),height:68 ,width: 260,),
        ],
      ),
    );
  }
}
