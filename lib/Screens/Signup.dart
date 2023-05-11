import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screens/Screens/CommonWidgets.dart/App_icon.dart';
import 'package:screens/Screens/CommonWidgets.dart/App_text.dart';
import 'package:screens/Screens/CommonWidgets.dart/Textfield.dart';
import 'package:screens/Screens/Login.dart';

import 'CommonWidgets.dart/ElevatedButton.dart';
import 'Home.dart';

class Signup_page extends StatefulWidget {
  const Signup_page({super.key});
  _Signup_pageState createState() => _Signup_pageState();
}

class _Signup_pageState extends State<Signup_page> {
  bool value = false;
  final _usernameController = TextEditingController();
  final _PasswordController = TextEditingController();
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 15, 5, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Create an account",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    App_textfield(
                        controller: _usernameController, labelText: 'Username'),
                    const SizedBox(
                      height: 15,
                    ),
                    App_textfield(
                        controller: _emailController, labelText: 'Email'),
                    const SizedBox(
                      height: 15,
                    ),
                    App_textfield(
                        controller: _PasswordController, labelText: 'Password'),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: this.value,
                            onChanged: (value) {
                              setState(() {
                                this.value = false;
                              });
                            }),
                        const App_text(
                            textcolor: Colors.orange,
                            firsttext: "I agree to",
                            secondtext: '\tterms and conditions'),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const AppButton(
                        text: 'Sign up',
                        buttonColor: Colors.orange,
                        textColor: Colors.white),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'or Register using social media',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        App_icon(
                            icon: FontAwesomeIcons.facebook,
                            color: Colors.blue),
                        App_icon(
                            icon: FontAwesomeIcons.twitter, color: Colors.blue)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const App_text(
              textcolor: Colors.orange,
              firsttext: "Already have an account?",
              secondtext: ' Login here'),
        ],
      ),
    );
  }
}
