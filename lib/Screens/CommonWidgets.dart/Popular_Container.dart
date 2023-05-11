import 'package:flutter/material.dart';

class Popular_Container extends StatelessWidget {
  final String Imagetext;
  final String Itemname;

  Popular_Container({
    super.key,
    required this.Imagetext,
    required this.Itemname,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              width: 100,
              height: 100,
              child: CircleAvatar(
                backgroundImage: AssetImage(Imagetext),
                radius: 10,
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
          Text(Itemname),
        ],
      ),
    );
  }
}
