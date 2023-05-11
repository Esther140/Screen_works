// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:screens/Screens/Login.dart';
import 'package:screens/Screens/landing_page.dart';

import 'Screens/Home.dart';
import 'Screens/items.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
