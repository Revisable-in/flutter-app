import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Revisable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Revisable'),
      routes: <String, WidgetBuilder>{'/Signup': (context) => Signup()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                new Listener(
                  onPointerDown: (PointerDownEvent event) {
                    Navigator.pushNamed(context, '/Signup');
                  },
                  child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: new Image(
                          image: AssetImage("assets/images/revisable.png"))),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "REVISABLE",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 24.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )));
  }
}

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      buildBackground(),
      Positioned(
        top: 450.0,
        left: 40.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "COURSE BASED FLASHCARDS",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 13.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "Spaced repetition to help you retain for longer.",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "INSIGHTS & FLASHCARDS",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 13.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "Insights which help you study smarter and more consistently.",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "VERSATILE REVISION TOOL",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 13.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: Text(
                "A tool which blends with your study patterns and builds consistency.",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    ]));
  }
}

Widget buildBackground() {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgsignup.png"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
