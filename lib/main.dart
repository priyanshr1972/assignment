import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/homescreen.dart';
import 'package:flutter_app_1/screens/screen1.dart';

import 'screens/screen0.dart';

void main() {
  runApp(
    MaterialApp(
      // ignore: prefer_const_constructors
      home: HomeScreen(),
      routes: {
        'S0': (context) => screen0(title: "Settings"),
        'S1': (context) => screen1(
              title: 'Gallery',
            ),
      },
    ),
  );
}
