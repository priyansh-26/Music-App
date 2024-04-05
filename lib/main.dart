// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_player/config/Theme.dart';
import 'package:music_player/pages/SongPages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'music ap',
      // theme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
    
    
      home: SongPage(),
      theme: darkTheme,
    );
  }
}
