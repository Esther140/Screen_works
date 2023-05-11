import 'package:flutter/material.dart';

class Items_page extends StatefulWidget {
  const Items_page({super.key});
  _Items_pageState createState() => _Items_pageState();
}

class _Items_pageState extends State<Items_page> {
  int _counter = 0;
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(),
          const Text(
            'Drinks/Beverages',
            textAlign: TextAlign.start,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Icon(
                Icons.star_rate_outlined,
              ),
              const Icon(Icons.star_rate_outlined),
              const Icon(Icons.star_rate_outlined),
              const Icon(Icons.star_rate_outlined),
              const Icon(Icons.star_rate_outlined),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("4.56gh"),
              const SizedBox(
                width: 200,
              ),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _decrementCounter,
              ),
              Text('$_counter'),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _incrementCounter,
              ),
            ],
          ),
          const Text(
              "Kindly follow the below Step by Step instructions to Solve Unable to load assets in Flutter.\n Here rather than adding the path to each image asset just specify ."),
          const TextField(),
          Column(children: [
            InkWell(
              onTap: () async {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/pp1.jfif'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('sssss'),
                    const SizedBox(
                      width: 180,
                    ),
                    const Text('cddffdff'),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () async {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/pp1.jfif'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('sssss'),
                    const SizedBox(
                      width: 180,
                    ),
                    const Text('cddffdff'),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () async {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/pp1.jfif'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('sssss'),
                    const SizedBox(
                      width: 180,
                    ),
                    const Text('cddffdff'),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  elevation: 2.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.add_shopping_cart),
                    const SizedBox(width: 10),
                    const Text("Add to cart"),
                  ],
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
