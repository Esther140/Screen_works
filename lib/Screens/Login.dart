import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screens/Screens/CommonWidgets.dart/App_icon.dart';
import 'package:screens/Screens/CommonWidgets.dart/App_text.dart';
import 'package:screens/Screens/CommonWidgets.dart/ElevatedButton.dart';
import 'package:screens/Screens/CommonWidgets.dart/Textfield.dart';

import 'Home.dart';
import 'Signup.dart';

class Login_page extends StatefulWidget {
  const Login_page({super.key});

  _Login_pageState createState() => _Login_pageState();
}

class _Login_pageState extends State<Login_page> {
  bool value = false;
  final _usernameController = TextEditingController();
  final _PasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: AssetImage('assets/logo.jpg'),
              radius: 60,
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Hello",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Log in into your account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      App_textfield(
                        controller: _usernameController,
                        labelText: 'Username',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      App_textfield(
                          controller: _PasswordController,
                          labelText: 'Password'),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(180, 0, 0, 0),
                        child: Text(
                          'forgot password?',
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const AppButton(
                          text: 'Login',
                          buttonColor: Colors.orange,
                          textColor: Colors.white),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'or Login using social media',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const App_icon(
                              icon: FontAwesomeIcons.facebook,
                              color: Colors.blue),
                          const App_icon(
                              icon: FontAwesomeIcons.twitter,
                              color: Colors.blue),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const App_text(
                textcolor: Colors.orange,
                firsttext: "Don't have an account?",
                secondtext: ' Register here')
          ],
        ),
      ),
    );
  }
}
