import 'package:flutter/material.dart';
import 'package:screens/Screens/CommonWidgets.dart/ElevatedButton.dart';
import 'package:screens/Screens/Login.dart';

import 'Signup.dart';

class Landing_page extends StatefulWidget {
  const Landing_page({super.key});
  _Landing_pageState createState() => _Landing_pageState();
}

class _Landing_pageState extends State<Landing_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
            Color(0xff1f005c),
            Color(0xff702f74),
            Color(0xff870160),
            Color(0xffac255e),
            Color(0xffca485c),
            Color(0xffe16b5c),
            Color(0xfff39060),
            Color(0xffffb56b),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/logo.jpg'),
              radius: 80,
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppButton(
                    text: 'Login',
                    buttonColor: Colors.white,
                    textColor: Colors.black),
                AppButton(
                    text: 'Signup',
                    buttonColor: Colors.white,
                    textColor: Colors.black),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Now! Quick login use Touch ID',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            const Icon(
              Icons.fingerprint,
              color: Colors.white,
              size: 60.0,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "use  Touch Id",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
