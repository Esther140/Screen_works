// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'package:screens/Screens/CommonWidgets.dart/App_Drawer.dart';
import 'package:screens/Screens/CommonWidgets.dart/Categories_container.dart';
import 'package:screens/Screens/CommonWidgets.dart/ElevatedButton.dart';
import 'package:screens/Screens/CommonWidgets.dart/Popular_Container.dart';
import 'package:screens/Screens/CommonWidgets.dart/Recommeded_container.dart';

import 'items.dart';
import 'landing_page.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                label: "home",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "home",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "home",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "home",
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: "home",
                icon: Icon(
                  Icons.home,
                ))
          ]),
      appBar: AppBar(
        backgroundColor: Color(0x00ffffff),
        shadowColor: Colors.transparent,
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/logo.jpg'),
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 10,
        child: Container(
          child: ListView(
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 45, 0, 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/logo.jpg'),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Column(
                              children: const [
                                Text("Esther Sarfo Dankwaa"),
                                Text("xtersarfo@gmail.com"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    App_Drawer(icon: Icons.mood, Drawername: "My orders"),
                    App_Drawer(icon: Icons.person, Drawername: "My profile"),
                    App_Drawer(
                        icon: Icons.location_city,
                        Drawername: "Delivery Address"),
                    App_Drawer(
                        icon: Icons.contact_phone,
                        Drawername: "Payment Method"),
                    App_Drawer(
                        icon: Icons.contact_phone, Drawername: "Contact us"),
                    App_Drawer(icon: Icons.settings, Drawername: "Settings"),
                    App_Drawer(
                        icon: Icons.help_center, Drawername: "Help & FAQs"),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(100, 50, 50, 0),
                        child: AppButton(
                            text: 'Logout',
                            buttonColor: Colors.orange,
                            textColor: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.orange,
      body: ListView(children: [
        SizedBox(height: 10),
        RichText(
            text: TextSpan(children: const [
          TextSpan(
              text: "Let's eat",
              style: TextStyle(fontSize: 20, color: Colors.black)),
          TextSpan(
              text: "\n Nutrious food",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.normal)),
        ])),
        SizedBox(height: 10),
        Center(
          child: SizedBox(
              height: 30,
              width: 200,
              child: TextFormField(
                decoration: InputDecoration(
                  prefix: Icon(
                    Icons.search,
                    color: Colors.black54,
                    size: 20.0,
                  ),
                  labelText: "Search",
                  border: OutlineInputBorder(),
                ),
              )),
        ),
        SizedBox(height: 15),
        Container(
          height: 50.0,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Categories_container(Itemname: 'soup', icon: Icons.soup_kitchen)
          ]),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Recommended Products"),
            Text(
              "see all",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        SizedBox(height: 10),
        SizedBox(
          height: 130.0,
          child: ListView(scrollDirection: Axis.horizontal, children: [
            Recommeded_container(
                Imagetext: 'assets/pp1.jfif',
                Itemname: 'Drinks/Beverages',
                ItemPrice: '4.50gh'),
            Recommeded_container(
                Imagetext: 'assets/pp1.jfif',
                Itemname: 'Drinks/Beverages',
                ItemPrice: '4.50gh'),
          ]),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Most popular Food"),
            Text(
              "see all",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Popular_Container(
                  Imagetext: 'assets/pp1.jfif', Itemname: 'Pizza'),
              Popular_Container(
                  Imagetext: 'assets/pp2.jfif', Itemname: 'Pizza'),
            ],
          ),
        ),
      ]),
    );
  }
}
