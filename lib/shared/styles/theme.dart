import 'package:flutter/material.dart';
import 'package:todo/shared/styles/colors.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: COLOR_PRIMARY,
        onPrimary: Colors.white,
        secondary: LIGHT_GREEN,
        onSecondary: Colors.white,
        error: COLOR_RED,
        onError: Colors.white,
        background: Colors.transparent,
        onBackground: Colors.white,
        surface: Colors.white,
        onSurface: Colors.black),
    textTheme: TextTheme(
      subtitle1: TextStyle(
        fontSize: 20,
        color: COLOR_PRIMARY_DARK,
        letterSpacing: 0.3,
      ),
    ),
    scaffoldBackgroundColor: LIGHT_GREEN,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: COLOR_PRIMARY,
        shape: const StadiumBorder(
            side: BorderSide(color: Colors.white, width: 2))),
    iconTheme: const IconThemeData(color: Colors.grey, size: 35),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: COLOR_PRIMARY,
      elevation: 0.0,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.white, elevation: 30, shape: CircularNotchedRectangle()),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      selectedItemColor: COLOR_PRIMARY,
      unselectedItemColor: Colors.grey,
    ),
  );

  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: COLOR_PRIMARY,
          onPrimary: Colors.white,
          secondary: COLOR_PRIMARY,
          onSecondary: Colors.white,
          error: COLOR_RED,
          onError: Colors.white,
          background: Colors.blue,
          onBackground: COLOR_SECOND_BLACK,
          surface: COLOR_SECOND_BLACK,
          onSurface: Colors.white),
      textTheme: const TextTheme(
        subtitle1: TextStyle(
          fontSize: 22,
          color: Colors.white,
          letterSpacing: 0.3,
        ),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.white, size: 35),
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: COLOR_PRIMARY,
        elevation: 0.0,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: COLOR_PRIMARY_DARK,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: COLOR_PRIMARY,
          shape: const StadiumBorder(
              side: BorderSide(color: Colors.white, width: 2))),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        selectedItemColor: COLOR_PRIMARY,
        unselectedItemColor: Colors.grey,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
          color: COLOR_SECOND_BLACK,
          elevation: 0,
          shape: const CircularNotchedRectangle()));
}
