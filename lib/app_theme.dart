import 'package:flutter/material.dart';

class AppTheme {
  static const lightPrimary = Color(0xffB7935F);
  static const darkPrimary = Color(0xff141A2E);
  static const wihte = Color(0xffF8F8F8);
  static const black = Color(0xff242424);
  static const gold = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: black,
        unselectedItemColor: wihte,
      ),
      textTheme: TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: black),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: black)));

  static ThemeData darkTheme = ThemeData(
      primaryColor: darkPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: gold,
        unselectedItemColor: wihte,
      ),
      textTheme: TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: wihte),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: gold)));
}
