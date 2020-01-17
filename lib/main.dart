import 'dart:math';

import 'package:flutter/material.dart';

import 'nextpage.dart';

void main() {
  runApp(MaterialApp(
    title: "temp",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 50;
  double width = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated COnatainer"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          color: Colors.blue,
          duration: Duration(milliseconds: 700),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FloatingActionButton(
            child: Text("Furrr"),
            backgroundColor: Colors.black,
            onPressed: () {
              setState(() {
                Random random = Random();
                height = random.nextInt(300).toDouble();
                width = random.nextInt(300).toDouble();
              });
            },
          ),
          MaterialButton(
            child: Text("Page 2"),
            color: Colors.yellowAccent,
            textColor: Colors.red,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NextPage();
              }));
              setState(() {
                Random random = Random();
                height = random.nextInt(300).toDouble();
                width = random.nextInt(300).toDouble();
              });
            },
          ),
        ],
      ),
    );
  }
}
