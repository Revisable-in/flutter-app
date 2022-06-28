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
      routes: {
        '/Signup': (context) => Signup(),
        '/Signup1': (context) => Signup1(),
        '/Login': (context) => Signup1(),
      },
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
            Row(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 23.0),
                    child: Image(
                      image: AssetImage("assets/images/flashcard.png"),
                    )),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "COURSE BASED FLASHCARDS",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 13.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      width: 200.0,
                      // padding: EdgeInsets.fromLTRB(0, 0, 0, 23.0),
                      child: Text(
                        "Spaced repetition to help you retain for longer.",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 23.0),
                    child: Image(
                      image: AssetImage("assets/images/schedule.png"),
                    )),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "INSIGHTS & ANALYSIS",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 13.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 200.0,
                      // padding: EdgeInsets.fromLTRB(0, 0, 0, 23.0),
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
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    child: Image(
                  image: AssetImage("assets/images/revise.png"),
                )),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "VERSATILE REVISION TOOL",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 13.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      width: 200.0,

                      // padding: EdgeInsets.symmetric(horizontal: 10),
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
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10.0, 50, 0, 0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Signup1');
                    },
                    style: ElevatedButton.styleFrom(
                      // side: BorderSide(color: Colors.white),
                      primary: Color.fromARGB(255, 4, 35, 94),
                      shape: new RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Ink(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.white, width: 1.0),
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 55, 213, 214),
                          Color.fromARGB(255, 94, 41, 159),
                        ]),
                      ),
                      child: Container(
                        width: 100,
                        height: 50,
                        // decoration: BoxDecoration(border: Border.all(width: 0)),
                        alignment: Alignment.center,
                        child: const Text(
                          "SIGN UP - IT'S FREE",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      primary: Colors.red.withOpacity(0),
                      shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.all(
                          //   Radius.circular(2),
                          // ),
                          side: BorderSide(color: Colors.transparent)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Login');
                    },
                    child: Text("Log In"),
                  ),
                ],
              ),
            )
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

class Signup1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
