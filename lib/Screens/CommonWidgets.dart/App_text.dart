import 'package:flutter/material.dart';

class App_text extends StatelessWidget {
  final String firsttext;
  final String secondtext;
  final Color textcolor;

  const App_text(
      {super.key,
      required this.textcolor,
      required this.firsttext,
      required this.secondtext});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
              text: firsttext,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 15)),
          TextSpan(
              text: secondtext,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: textcolor, fontSize: 15)),
        ],
      ),
    );
  }
}
