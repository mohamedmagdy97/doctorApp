import 'package:doctor_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


ThemeData lightTheme = ThemeData(
  primarySwatch: defaultColor,
  // accentColor: Colors.deepOrange,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    titleSpacing: 20,
    backwardsCompatibility: false,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defaultColor,
    unselectedItemColor: Colors.grey,
    elevation: 10,
    backgroundColor: Colors.white,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(
      fontSize: 22,
      color: Colors.black,
      fontFamily: 'Janna',
    ),
  ),
  fontFamily: 'Janna',
);
