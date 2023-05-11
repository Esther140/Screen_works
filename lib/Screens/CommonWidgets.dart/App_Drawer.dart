import 'package:flutter/material.dart';
import 'package:screens/Screens/CommonWidgets.dart/App_icon.dart';

class App_Drawer extends StatelessWidget {
  final IconData icon;

  final String Drawername;
  const App_Drawer({super.key, required this.icon, required this.Drawername});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(80, 30, 0, 0),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              icon,
            ),
            SizedBox(
              width: 10,
            ),
            Text(Drawername),
          ],
        ),
      ),
    );
  }
}
