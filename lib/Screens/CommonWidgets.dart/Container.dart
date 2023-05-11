import 'package:flutter/material.dart';

class App_Container extends StatelessWidget {
  final Color buttoncolor;
  final Color textcolor;
  final String text;
  IconData? icon;

  double size;
  App_Container({
    super.key,
    required this.buttoncolor,
    required this.textcolor,
    required this.text,
    this.icon,
    required this.size,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: textcolor),
      )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
        color: buttoncolor,
      ),
    );
  }
}
