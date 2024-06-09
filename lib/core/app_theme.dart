import 'package:flutter/material.dart';

const PrimaryColor = Color(0xFF284243);
const PrimaryColor2 = Color(0xFF3FC784);

class   AppTheme {
  static ThemeData get Light => ThemeData(
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          textStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              fixedSize: Size.fromHeight(60),
              backgroundColor: Color(0xFF284243).withOpacity(0.9),
              textStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ))),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: PrimaryColor.withOpacity(0.1),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        labelStyle: TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: PrimaryColor.withOpacity(0.3)),
        errorStyle: TextStyle(color: Colors.red),
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: PrimaryColor.withOpacity(0.4), width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
      fontFamily: "FontFont",
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: PrimaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.3),
        type: BottomNavigationBarType.fixed,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.all(PrimaryColor.withOpacity(0.25)),
        trackColor: WidgetStateProperty.resolveWith((states) =>
            states.contains(WidgetState.selected)
                ? PrimaryColor.withOpacity(0.5)
                : null),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 4.0,
        splashColor: Colors.black,
        backgroundColor: PrimaryColor,
      ));
}
