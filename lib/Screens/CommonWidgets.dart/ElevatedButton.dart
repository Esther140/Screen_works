import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  // final Function? onpressed;
  final String text;
  final Color buttonColor;
  final Color textColor;

  const AppButton(
      {super.key,
      //  this.onpressed,
      required this.text,
      required this.buttonColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
      ),
    );
  }
}
