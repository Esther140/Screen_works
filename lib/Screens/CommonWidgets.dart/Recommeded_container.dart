import 'package:flutter/material.dart';

class Recommeded_container extends StatelessWidget {
  final String Imagetext;
  final String Itemname;
  final String ItemPrice;

  Recommeded_container(
      {super.key,
      required this.Imagetext,
      required this.Itemname,
      required this.ItemPrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 150,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(Imagetext),
                  radius: 40,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Itemname,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      Text(
                        ItemPrice,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ]),
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
