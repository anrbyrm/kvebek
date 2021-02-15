import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final dark = ThemeData(
    fontFamily: 'Raleway',
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
    ),
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      primary: Colors.black,
      primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    timePickerTheme: const TimePickerThemeData(
        backgroundColor: Colors.black,
        dialTextColor: Colors.white,
        helpTextStyle: TextStyle(color: Colors.white)),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    buttonTheme: ButtonThemeData(
      disabledColor: Colors.black,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: const BorderSide(color: Colors.white, width: 0.5),
      ),
    ),
    popupMenuTheme: const PopupMenuThemeData(
      color: Colors.black,
      elevation: 2.0,
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(
      splashColor: Colors.transparent,
    ),
    cardColor: Colors.black,
    accentColor: Colors.white,
    cursorColor: Colors.white24,
    textSelectionHandleColor: Colors.white,
  );

  static final timePickerDark = ThemeData(
    fontFamily: 'Roboto',
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      primary: Colors.white,
      primaryVariant: Colors.black,
      secondary: Colors.red,
    ),
    timePickerTheme: const TimePickerThemeData(
      backgroundColor: Colors.black,
      dialTextColor: Colors.white,
      dialHandColor: Colors.black,
      helpTextStyle: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
      dayPeriodTextStyle: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    cursorColor: Colors.white24,
    textSelectionHandleColor: Colors.white,
  );
}
