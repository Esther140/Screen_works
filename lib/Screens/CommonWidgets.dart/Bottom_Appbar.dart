import 'package:flutter/material.dart';

class App_Navigationbar extends StatelessWidget {
  final String label;
  final IconData icon;
  const App_Navigationbar({super.key, required this.label, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(
                label: label,
                icon: Icon(
                  icon,
                )),
          ]),
    );
  }
}
