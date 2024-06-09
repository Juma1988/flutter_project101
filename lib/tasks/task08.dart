import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_navigator.dart';

import 'view.dart';

class Task08 extends StatefulWidget {
  const Task08({super.key});

  @override
  State<Task08> createState() => _Task08State();
}

List<String> coverList = [
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO2sV0k71DOVADVJzjsDrm-aRayIvZzzkrt9X7fSS94g&s',
  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/song-album-cover-design%2C-photos%2C-wallpaper-template-d3d43dd3b9e0587e340806319ab60034_screen.jpg?ts=1631079305',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrQecbE6QWR3nP1y2yQ4eTXgqCQNkIwkhMYtHuPco-Og&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHfDX5QLjbMjl0op5_8aQWUcI6D_V6CkOJEfVqItr9jg&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeDv_T_Df_u8uLVb05CZ5voLzg-BbYI4UXz7bQXz6VHw&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxOnVLwpQbCvweBB-QF0q2fBOHhz0EiwASZgAyRb49QA&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRtftAopKFZLSN1bfDJA2_D5eFWJ05UYK8NL_Rv78quQ&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXtR7gOKo416DLPZyTsHU5ZFwvtRc9KTT3ukC-8m-T9Q&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAYLnRp0iE-1a3BQMUMqzLlHsXpvlSIEnsimdltqLf0A&s',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR43d3TaxrBYZgs5qwVISEhDBxvF9IXgdpzdO8Tieli2g&s',
];

class _Task08State extends State<Task08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.01),
        title: GestureDetector(
            onTap: () {
              AppGoto(TaskView());
            },
            child: Text('Home', style: TextStyle(color: Colors.white))),
        actions: [
          Text(
            'UPGRADE',
            style: TextStyle(color: Colors.white),
          ),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.cast), color: Colors.white),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('This is upload icon'),
                    backgroundColor: Colors.brown,
                  ),
                );
              },
              icon: Icon(Icons.upload),
              color: Colors.white),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('This is message icon'),
                    backgroundColor: Colors.brown,
                  ),
                );
              },
              icon: Icon(Icons.message_outlined),
              color: Colors.white),
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('This is notifications icon'),
                    backgroundColor: Colors.brown,
                  ),
                );
              },
              icon: Icon(Icons.notifications_active),
              color: Colors.white),
        ],
      ),
      extendBodyBehindAppBar: true,
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
        child: GridView.builder(
          padding: EdgeInsetsDirectional.all(16).copyWith(top: 52),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 180 / 210,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16),
          itemCount: coverList.length,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadiusDirectional.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                ClipRect(
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    coverList[index],
                    width: double.infinity,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            'Song Name',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text('10:08',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(.60))),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
