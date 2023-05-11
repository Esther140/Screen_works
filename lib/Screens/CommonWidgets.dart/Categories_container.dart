import 'package:flutter/material.dart';

class Categories_container extends StatelessWidget {
  final String Itemname;
  final IconData icon;
  const Categories_container(
      {super.key, required this.Itemname, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(icon),
              SizedBox(width: 5),
              Text(Itemname),
            ],
          ),
          margin: const EdgeInsets.only(bottom: 6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
