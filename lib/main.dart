import 'package:flutter/material.dart';
import 'package:flutter_project101/core/app_navigator.dart';
import 'browsing/browsing_view.dart';
import 'core/app_theme.dart';


main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter 3",
    navigatorKey: navigatorKey,
    home: SafeArea(child: BrowsingView()),
    theme: AppTheme.Light,
  ));
}
