// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:music_player/config/colors.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: bgColor,
    primary: primaryColor,
  ),
  textTheme: TextTheme(
      bodyLarge: TextStyle(
        // fontFamily: popins;,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: fontColor,
      ),
      bodyMedium: TextStyle(
        // fontFamily: popins;,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: fontColor,
      ),
      bodySmall: TextStyle(
        // fontFamily: popins;,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: lableColor,
      ),
      titleLarge: TextStyle(
        // fontFamily: popins;,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: primaryColor,
      ),
      labelSmall: TextStyle(
        // fontFamily: popins;,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: lableColor,
      ),
      labelMedium: TextStyle(
        // fontFamily: popins;,
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: lableColor,
      )),
  useMaterial3: true,
);
