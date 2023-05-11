import 'package:flutter/material.dart';

class App_icon extends StatelessWidget {
  final IconData icon;
  final Color color;
  const App_icon({super.key, required this.icon, required this.color});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        icon,
        size: 20,
      ),
      onPressed: () {},
      color: color,
    );
  }
}
