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
        unselectedWidgetColor: Colors.white,
      ),
      home: MyHomePage(title: 'Revisable'),
      routes: {
        '/Signup1': (context) => Signup1(),
        '/Signup2': (context) => Signup2(),
        '/Signup3': (context) => Signup3(),
        '/Signup4': (context) => Signup4(),
        '/Started': (context) => Started(),
        '/Login': (context) => Login(),
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

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildBackground(),
          Positioned(
            top: 475.0,
            left: 100.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 10),
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
                        SizedBox(
                          width: 225.0,
                          // padding: EdgeInsets.fromLTRB(0, 0, 0, 23.0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20.0, 0, 0, 38),
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
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 55),
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
                        SizedBox(
                          width: 225.0,
                          // padding: EdgeInsets.fromLTRB(0, 0, 0, 23.0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(20.0, 0, 0, 38),
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
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: 25),
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
                        SizedBox(
                          width: 225.0,

                          // padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            padding: EdgeInsets.only(left: 20),
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
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
              top: 685,
              left: 40,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 50, 40, 0),
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
              )),
        ],
      ),
    );
  }
}

//---------------------------------BACKGROUND FUNCTION----------------------------------------------------------------

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

Widget buildBackgroundsign() {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgsignup1.png"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

Widget buildBackgroundstart() {
  return Scaffold(
    body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bgstart.png"),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

//--------------------------------------------------------SIGNUP_1------------------------------------------------------------------------

class Signup1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildBackgroundsign(),
          Positioned(
            top: 275.0,
            left: 70.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250.0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Your only medico revision companion",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 40, 35),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Email ID',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Signup2');
                  },
                  style: ElevatedButton.styleFrom(
                    // side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    primary: Color.fromARGB(255, 4, 35, 94),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Ink(
                    width: 280,
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
                        "SIGN UP",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 80,
                  ),
                  padding: EdgeInsets.fromLTRB(110, 15, 0, 0),
                  child: Text(
                    'hello',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 4, 35, 94),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(140, 15, 0, 0),
                  child: Text(
                    'or',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  // decoration: BoxDecoration(
                  //   border: Border(
                  //     bottom: BorderSide(color: Colors.white),
                  //   ),
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//--------------------------------------------------------------LOGIN-------------------------------------------------------------

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildBackgroundsign(),
          Positioned(
            top: 325.0,
            left: 70.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250.0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Log in back to your account!",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 40, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Email ID',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 40, 35),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Started');
                  },
                  style: ElevatedButton.styleFrom(
                    // side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    primary: Color.fromARGB(255, 4, 35, 94),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Ink(
                    width: 280,
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
                        "LOG IN",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(35, 150, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Do not have an account?      ",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        new GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Signup1');
                          },
                          child: Text(
                            "Sign Up!",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//---------------------------------------------------SIGNUP_2----------------------------------------------------------------------------

class _Signup2State extends State<Signup2> {
  bool whatsapp = false;
  bool mail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildBackgroundsign(),
          Positioned(
            top: 275.0,
            left: 70.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 225.0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Text(
                      "Kickstart your medical learning experience!",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 40, 10),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Mobile Number',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: whatsapp,
                        onChanged: (bool? value) {
                          if (value != null) {
                            setState(() {
                              whatsapp = value;
                            });
                          }
                        },
                      ),
                      Text(
                        "Subscribe to Whatsapp Medcases",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Row(
                    children: [
                      Checkbox(
                        value: mail,
                        onChanged: (bool? value) {
                          if (value != null) {
                            setState(() {
                              mail = value;
                            });
                          }
                        },
                      ),
                      Text(
                        "Subscribe to ChampionMed’s mail-list",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Signup3');
                  },
                  style: ElevatedButton.styleFrom(
                    // side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    primary: Color.fromARGB(255, 4, 35, 94),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Ink(
                    width: 280,
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
                        "CONTINUE (2/4)",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(35, 170, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Already have an account?      ",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        new GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//-----------------------------------------------------------SIGNUP3---------------------------------------------------------------------------

class Signup3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildBackgroundsign(),
          Positioned(
            top: 275.0,
            left: 70.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250.0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Help us set up your personalised account!",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 40, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Year of Education',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 40, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'College',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 40, 35),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'State',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Signup4');
                  },
                  style: ElevatedButton.styleFrom(
                    // side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    primary: Color.fromARGB(255, 4, 35, 94),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Ink(
                    width: 280,
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
                        "CONTINUE (3/4)",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(35, 95, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Already have an account?      ",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        new GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//--------------------------------------------------------SIGNUP-4------------------------------------------------------------------------

class Signup4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          buildBackgroundsign(),
          Positioned(
            top: 275.0,
            left: 70.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250.0,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Help us set up your personalised account!",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 50, 40, 0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Package',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 25, 40, 35),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.cyan, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Purpose of Joining',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(255, 245, 244, 255),
                          fontStyle: FontStyle.italic,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Started');
                  },
                  style: ElevatedButton.styleFrom(
                    // side: BorderSide(color: Colors.white),
                    padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
                    primary: Color.fromARGB(255, 4, 35, 94),
                    shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Ink(
                    width: 280,
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
                        "COMPLETE",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(35, 95, 0, 0),
                    child: Row(
                      children: [
                        Text(
                          "Already have an account?      ",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        new GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/Login');
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//-----------------------------------------------------------STARTED------------------------------------------------------------------

class Started extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: [
      buildBackgroundstart(),
      Positioned(
        top: 500.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                SizedBox(
                  width: 400,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 140, 0),
                    child: Text(
                      "We are excited to have you onboard!",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 550,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(50, 20, 180, 30),
                    child: Text(
                      "ChampionMed is your go to tool when you need to boost your consistency and retention. ",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 16.0,
                        // fontWeight: FontWeight.w200,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40.0, 50, 0, 0),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
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
                          "GET STARTED",
                          style: TextStyle(
                            fontFamily: "Raleway",
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
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
