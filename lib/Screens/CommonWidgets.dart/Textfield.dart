import 'package:flutter/material.dart';

class App_textfield extends StatelessWidget {
  final TextEditingController controller;

  final String labelText;
  final IconData? preffixIcon;
  final IconData? suffixIcon;
  bool obscure = false;

  App_textfield({
    super.key,
    required this.controller,
    required this.labelText,
    this.preffixIcon,
    this.suffixIcon,
  });
  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
            labelText: labelText,
            suffix: null == suffixIcon ? null : Icon(suffixIcon),
            prefix: null == suffixIcon ? null : Icon(preffixIcon)),
      );
}
