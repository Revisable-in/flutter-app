import 'package:flip_card/flip_card.dart';
import 'package:flutter_application/chapter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application/provider/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'crypto_data.dart';
import 'topic1.dart';
import 'topic2.dart';
import 'slides.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Revisable',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          unselectedWidgetColor: Colors.white,
        ),
        home: MyHomePage(title: 'Revisable'),
        //home: Main1(),
        routes: {
          '/Signup1': (context) => Signup1(),
          '/Signup2': (context) => Signup2(),
          '/Signup3': (context) => Signup3(),
          '/Signup4': (context) => Signup4(),
          '/Started': (context) => Started(),
          '/Login': (context) => Login(),
          '/Main1': (context) => Main1(),
          '/Main2': (context) => Main2(),
          '/Main3': (context) => Main3(),
          '/Slides': (context) => Slides(),
        },
      ),
    );
  }
}

class Chapter {
  final List subject;
  final List chapter;
  final int number;
  final String topic;

  const Chapter({
    required this.subject,
    required this.chapter,
    required this.number,
    required this.topic,
  });
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class Signup1 extends StatefulWidget {
  const Signup1({Key? key}) : super(key: key);
  @override
  _Signup1State createState() => _Signup1State();
}

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class Signup3 extends StatefulWidget {
  @override
  _Signup3State createState() => _Signup3State();
}

class Signup4 extends StatefulWidget {
  @override
  _Signup4State createState() => _Signup4State();
}

class Main1 extends StatefulWidget {
  const Main1({Key? key}) : super(key: key);

  @override
  State<Main1> createState() => _Main1State();
}

class Main2 extends StatefulWidget {
  const Main2({Key? key}) : super(key: key);

  @override
  State<Main2> createState() => _Main2State();
}

class Main3 extends StatefulWidget {
  const Main3({Key? key}) : super(key: key);

  @override
  State<Main3> createState() => _Main3State();
}

class Slides extends StatefulWidget {
  const Slides({Key? key}) : super(key: key);
  @override
  State<Slides> createState() => _SlidesState();
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
                          padding: EdgeInsets.only(right: 0),
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
                          padding: EdgeInsets.only(right: 48),
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
                          padding: EdgeInsets.only(right: 17),
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
                              fontWeight: FontWeight.w900,
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
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 12.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
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

class _Signup1State extends State<Signup1> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Stack(
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
                    width: 280.0,
                    child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Text(
                        "Your only medico revision companion",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontSize: 24.0,
                          fontWeight: FontWeight.w900,
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
                      child: TextFormField(
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
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Field is required';
                            String pattern =
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                            if (!RegExp(pattern).hasMatch(value))
                              return 'Invalid email address format';
                            return null;
                          }),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        Navigator.pushNamed(context, '/Signup2');
                      }
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
                  // Container(
                  //   child: ElevatedButton.icon(
                  //     style: ElevatedButton.styleFrom(
                  //       primary: Colors.white,
                  //       onPrimary: Colors.black,
                  //       minimumSize: Size(double.infinity, 50),
                  //     ),
                  //     icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
                  //     label: Text('Sign Up with Google'),
                  //     onPressed: () {
                  //       final provider = Provider.of<GoogleSignInProvider>(
                  //           context,
                  //           listen: false);
                  //       provider.googleLogin();
                  //     },
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(right: 30, top: 20, bottom: 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 55, 213, 214),
                          Color.fromARGB(255, 94, 41, 159),
                          //add more colors
                        ]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.transparent,
                          onSurface: Colors.transparent,
                          shadowColor: Colors.transparent,
                          //make color or elevated button transparent
                        ),
                        icon:
                            FaIcon(FontAwesomeIcons.google, color: Colors.red),
                        label: Text('Sign Up with Google'),
                        onPressed: () {
                          final provider = Provider.of<GoogleSignInProvider>(
                              context,
                              listen: false);
                          provider.googleLogin();
                        },
                        //           child: Padding(
                        //             padding: EdgeInsets.only(
                        //               top: 15.5,
                        //               bottom: 15.5,
                        //             ),
                        //             child: Text("All Courses"),
                        //           ))),
                        // ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------------------------LOGIN-------------------------------------------------------------

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Stack(
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
                      child: TextFormField(
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
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Field is required';
                            String pattern =
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                            if (!RegExp(pattern).hasMatch(value))
                              return 'Invalid email address format';
                            return null;
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 40, 35),
                      child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
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
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Field is required';
                            String pattern =
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
                            if (!RegExp(pattern).hasMatch(value))
                              return '''
Password must be 8 least characters,
include an uppercase letter, number and symbol.
''';
                            return null;
                          }),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        Navigator.pushNamed(context, '/Started');
                      }
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
      ),
    );
  }
}

//---------------------------------------------------SIGNUP_2----------------------------------------------------------------------------

class _Signup2State extends State<Signup2> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool whatsapp = false;
  bool mail = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Stack(
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
                    width: 255.0,
                    child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                      child: TextFormField(
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
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Field is required';
                            String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                            if (!RegExp(pattern).hasMatch(value))
                              return 'Invalid phone number format';
                            return null;
                          }),
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
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400),
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
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        Navigator.pushNamed(context, '/Signup3');
                      }
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
      ),
    );
  }
}

//-----------------------------------------------------------SIGNUP3---------------------------------------------------------------------------

class _Signup3State extends State<Signup3> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String dropdownValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Stack(
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
                    width: 260.0,
                    child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
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
                      child: DropdownButtonFormField(
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
                          value: dropdownValue,
                          items: [
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Year of Education',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 11,
                                  ),
                                ),
                                value: ''),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'First',
                                  style: dropdownValue == 'First'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'First'),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Second',
                                  style: dropdownValue == 'Second'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'Second'),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Third',
                                  style: dropdownValue == 'Third'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'Third'),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Fourth',
                                  style: dropdownValue == 'Fourth'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'Fourth'),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Fifth',
                                  style: dropdownValue == 'Fifth'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'Fifth'),
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                              TextStyle(color: Colors.black);
                            });
                          },
                          validator: (value) {
                            if (dropdownValue == '')
                              return 'You must select a value.';
                            return null;
                          }),
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
                            fontSize: 11,
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
                            fontSize: 11,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        Navigator.pushNamed(context, '/Signup4');
                      }
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
      ),
    );
  }
}

//--------------------------------------------------------SIGNUP-4------------------------------------------------------------------------

class _Signup4State extends State<Signup4> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  String dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: Stack(
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
                    width: 260.0,
                    child: Container(
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
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
                      child: DropdownButtonFormField(
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
                          value: dropdownValue,
                          items: [
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Package',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 11,
                                  ),
                                ),
                                value: ''),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Free Trial',
                                  style: dropdownValue == 'Free Trial'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'Free Trial'),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Refresher',
                                  style: dropdownValue == 'Refresher'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'Refresher'),
                            DropdownMenuItem<String>(
                                child: Text(
                                  'Refresher Plus',
                                  style: dropdownValue == 'Refresher Plus'
                                      ? TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 11,
                                        )
                                      : TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                ),
                                value: 'Refresher Plus'),
                          ],
                          onChanged: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                              TextStyle(color: Colors.black);
                            });
                          },
                          validator: (value) {
                            if (dropdownValue == '')
                              return 'You must select a value.';
                            return null;
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 40, 35),
                      child: TextFormField(
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
                          validator: (value) {
                            if (value == null || value.isEmpty)
                              return 'Field is required';
                          }),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_key.currentState!.validate()) {
                        _key.currentState!.save();
                        Navigator.pushNamed(context, '/Started');
                      }
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
                      Navigator.pushNamed(context, '/Slides');
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

//-------------------------------------------------------------------MAIN-1-------------------------------------------------------------------

//-------------------------------------------------------------------------------------------------------------------------------------------

class _Main1State extends State<Main1> {
  var cryptoData = CryptoData.getData;
  List<Chapter> chapters = [
    const Chapter(subject: [
      'General features of bones & Joints',
      'General features of Muscle',
      'General features of skin and fascia',
      'General features of the cardiovascular system',
      'General Features of lymphatic system',
      'Introduction to the nervous system',
      'Features of individual bones (Upper Limb)',
      'Pectoral region',
      'Axilla, Shoulder and Scapular region',
      'Arm & Cubital fossa',
      'Forearm & hand',
      'General Features, Joints, radiographs & surface marking',
      'Features of individual bones (Lower Limb)',
      'Front & Medial side of thigh',
      'Gluteal region & back of thigh',
      'Hip Joint',
      'Knee joint, Anterolateral compartment of leg & dorsum of foot',
      'Back of Leg & Sole',
      'General Features, Joints, radiographs & surface marking',
      'Thoracic cage',
      'Heart & Pericardium',
      'Mediastinum',
      'Lungs & Trachea',
      'Thorax',
      'Skull osteology',
      'Scalp',
      'Face & parotid region',
      'Posterior triangle of neck',
      'Cranial cavity',
      'Orbit',
      'Anterior Triangle',
      'Temporal and Infratemporal regions',
      'Submandibular region',
      'Deep structures in the neck',
      'Mouth, Pharynx & Palate',
      'Cavity of Nose',
      'Larynx',
      'Tongue',
      'Organs of hearing and equilibrium',
      'Eyeball',
      'Back Region',
      'Head & neck Joints, Histology, Development, Radiography & Surface marking',
      'Anterior abdominal wall',
      'Posterior abdominal wall',
      'Male external genitalia',
      'Abdominal cavity',
      'Pelvic wall and viscera',
      'Perineum',
      'Vertebral column',
      'Sectional Anatomy',
      'Histology & Embryology'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 51, topic: 'Human Anatomy'),
    const Chapter(subject: [
      'Osteology',
      'Radiodiagnosis',
      'Surface marking',
      'Meninges & CSF',
      'Spinal Cord',
      'Medulla Oblongata',
      'Pons',
      'Cerebellum',
      'Midbrain',
      'Cranial nerve nuclei & Cerebral hemispheres',
      'Ventricular System',
      'Histology & Embryology',
      'Epithelium histology',
      'Connective tissue histology',
      'Muscle histology',
      'Nervous tissue histology',
      'Blood Vessels',
      'Glands & Lymphoid tissue',
      'Bone & Cartilage',
      'Integumentary System',
      'Chromosomes',
      'Patterns of Inheritance',
      'Principle of Genetics, Chromosomal Aberrations & Clinical Genetics',
      'Introduction to embryology',
      'Gametogenesis and fertilization',
      'Second week of development',
      '3rd to 8th week of development',
      'Fetal membranes',
      'Prenatal Diagnosis',
      'Ethics in Anatomy',
      'General Physiology',
      'Haematology',
      'Nerve and Muscle Physiology',
      'Gastro-intestinal Physiology',
      'Cardiovascular Physiology (CVS)',
      'Respiratory Physiology',
      'Renal Physiology',
      'Endocrine Physiology',
      'Reproductive Physiology',
      'Neurophysiology',
      'Integrated Physiology'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 41, topic: 'Physiology'),
    const Chapter(subject: [
      'Basic Biochemistry',
      'Enzyme',
      'Chemistry and Metabolism of Carbohydrates',
      'Chemistry and Metabolism of Lipids',
      'Chemistry and Metabolism of Proteins',
      'Metabolism and homeostasis',
      'Molecular Biology',
      'Nutrition',
      'Extracellular Matrix',
      'Oncogenesis and immunity',
      'Biochemical Laboratory Tests'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 11, topic: 'Biochemistry'),
    const Chapter(subject: [
      'Pharmacology',
      'Clinical Pharmacy',
      'Clinical Pharmacology',
      'Experimental Pharmacology',
      'Pharmacology'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 5, topic: 'Pharmacology'),
    const Chapter(subject: [
      'Introduction to Pathology',
      'Cell Injury and Adaptation',
      'Amyloidosis',
      'Inflammation',
      'Healing and repair',
      'Hemodynamic disorders',
      'Neoplastic disorders',
      'Basic diagnostic cytology',
      'Immunopathology and AIDS',
      'Infections and Infestations',
      'Genetic and paediatric diseases',
      'Environmental and nutritional diseases',
      'Introduction to haematology',
      'Microcytic anemia',
      'Macrocytic anemia',
      'Hemolytic anemia',
      'Aplastic anemia',
      'Leukocyte disorders',
      'Lymph node and spleen',
      'Hemorrhagic disorders',
      'Blood banking and transfusion',
      'Clinical Pathology',
      'Gastrointestinal tract',
      'Hepatobiliary system',
      'Respiratory system',
      'Cardiovascular system',
      'Urinary Tract',
      'Male Genital Tract',
      'Female Genital Tract',
      'Breast',
      'Endocrine system',
      'Bone and soft tissue',
      'Skin',
      'Central Nervous System',
      'Eye'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 35, topic: 'Pathology'),
    const Chapter(subject: [
      'General Microbiology and Immunity',
      'CVS and Blood',
      'Gastrointestinal and hepatobiliary system',
      'Musculoskeletal system skin and soft tissue infections',
      'Central Nervous System infections',
      'Respiratory tract infections',
      'Genitourinary & Sexually transmitted infections',
      'Zoonotic diseases and miscellaneous'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 8, topic: 'Microbiology'),
    const Chapter(subject: [
      'Forensic Pathology',
      'Clinical Forensic Medicine',
      'Medical Jurisprudence (Medical Law and ethics)',
      'Forensic Psychiatry',
      'Forensic Laboratory investigation in medical legal practice',
      'Emerging technologies in Forensic Medicine',
      'Toxicology: General Toxicology',
      'Toxicology : Chemical Toxicology',
      'Toxicology : Pharmaceutical Toxicology',
      'Toxicology : Biotoxicology',
      'Toxicology : Sociomedical Toxicology',
      'Toxicology : Environmental Toxicology',
      'Skills in Forensic Medicine & Toxicology'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 13, topic: 'Forensic Medicine & Toxicology'),
  ];
  String dropdownValue = '          First       ';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 245, 244, 255),
            bottomNavigationBar: new Theme(
              data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Color.fromARGB(255, 4, 35, 93),
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.red,
                  textTheme: Theme.of(context).textTheme.copyWith(
                      caption: new TextStyle(
                          color: Colors
                              .yellow))), // sets the inactive color of the `BottomNavigationBar`
              child: new BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                currentIndex: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/openbook.png"),
                    ),
                    label: " ",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/firstaid.png"),
                    ),
                    label: "aid",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/house.png"),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/screen.png"),
                    ),
                    label: "screen",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/question.png"),
                    ),
                    label: "Help",
                  ),
                ],
              ),
            ),
            body: Stack(fit: StackFit.expand, children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/backbutton.png"),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/Started');
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 195, 0),
                                child: Text(
                                  "Courses",
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 4, 35, 93),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 16.3),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/profile.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 30, top: 20, bottom: 10),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          onSurface: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          //make color or elevated button transparent
                                        ),
                                        onPressed: () {
                                          print("You pressed Elevated Button");
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 15.5,
                                            bottom: 15.5,
                                          ),
                                          child: Text("All Courses"),
                                        ))),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      right: 30, top: 20, bottom: 10),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        elevation: 16,
                                        icon: Visibility(
                                            visible: false,
                                            child: Icon(Icons.arrow_downward)),
                                        iconSize: 24,
                                        style: const TextStyle(
                                            color: Colors.deepPurple),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        onChanged: (String? newValue) {
                                          if (newValue != dropdownValue) {
                                            switch (newValue) {
                                              case '          First       ':
                                                Navigator.pushNamed(
                                                    context, '/Main1');
                                                break;
                                              case '       Second       ':
                                                Navigator.pushNamed(
                                                    context, '/Main2');
                                                break;
                                              case '         Third       ':
                                                Navigator.pushNamed(
                                                    context, '/Main3');
                                                break;
                                            }
                                          }

                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>[
                                          '          First       ',
                                          '       Second       ',
                                          '         Third       ',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          if (value == dropdownValue) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            );
                                          } else {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            );
                                          }
                                        }).toList(),
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 20, bottom: 10),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          onSurface: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          //make color or elevated button transparent
                                        ),
                                        onPressed: () {
                                          print("You pressed Elevated Button");
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 15.5,
                                            bottom: 15.5,
                                          ),
                                          child: Text("Starred"),
                                        ))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
// scrollDirection: Axis.horizontal,

                          itemCount: cryptoData.length,
                          itemBuilder: (context, index) {
                            final chapter = chapters[index];

                            return Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 16, 0),
                              height: 100,
                              width: double.maxFinite,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          ChapterPage(chapter: chapter),
                                    ));
                                  },
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(7),
                                      child: Stack(children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Stack(
                                            children: <Widget>[
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, top: 5),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          cryptoIcon(cryptoData[
                                                              index]),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          // Spacer(),
                                                          cryptoChange(
                                                              cryptoData[
                                                                  index]),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
            ])));
  }

  Widget cryptoIcon(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Image(
            image: AssetImage('${data['image']}'),
          )),
    );
  }

  Widget cryptoChange(data) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: SizedBox(
        width: 200,
        child: RichText(
          text: TextSpan(
            text: '${data['change']}',
            style: TextStyle(
                fontFamily: "Raleway",
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 4, 35, 93),
                fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                  text: '\n${data['changeValue']}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 35, 93),
                    fontSize: 12,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//--------------------------------------------------------------MAIN 2---------------------------------------------------------------------------

class _Main2State extends State<Main2> {
  var cryptoData = CryptoData1.getData;
  List<Chapter> chapters = [
    const Chapter(subject: [
      'Concept of Health and Disease',
      'Relationship of social and behavioural to health and disease',
      'Environmental Health Problems',
      'Principles of health promotion and education',
      'Nutrition',
      'Basic statistics and its applications',
      'Epidemiology',
      'Epidemiology of communicable and non- communicable diseases',
      'Demography and vital statistics',
      'Reproductive maternal and child health',
      'Occupational Health',
      'Geriatric services',
      'Disaster Management',
      'Hospital waste management',
      'Mental Health',
      'Health planning and management',
      'Health care of the communtiy',
      'International Health',
      'Essential Medicine',
      'Recent advances in Community Medicine'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 18, topic: 'Community Medicine'),
    const Chapter(subject: [
      'Heart Failure',
      'Acute Myocardial Infarction/ IHD',
      'Pneumonia',
      'Fever and febrile syndromes',
      'Liver disease',
      'HIV',
      'Rheumatologic problems',
      'Hypertension',
      'Anemia',
      'Acute Kidney Injury and Chronic renal failure',
      'Diabetes Mellitus',
      'Thyroid dysfunction',
      'Common malignancies',
      'Obesity',
      'GI bleeding',
      'Diarrheal disorder',
      'Headache',
      'Cerebrovascular accident',
      'Movement disorders',
      'Envenomation',
      'Poisoning',
      'Mineral, Fluid Electrolyte and Acid base Disorder',
      'Nutritional and Vitamin Deficiencies'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 21, topic: 'General Medicine'),
    const Chapter(subject: [
      'Geriatrics',
      'Miscellaneous Infections',
      'The role of the physician in the community',
      'Obstructive airway disease'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 4, topic: 'Respiratory Medicine'),
    const Chapter(subject: [
      'Common problems related to Growth',
      'Common problems related to Development -1 (Developmental delay , Cerebral palsy)',
      'Common problems related to Development-2 (Scholastic backwardness, Learning Disabilities , Autism , ADHD)',
      'Common problems related to behavior',
      'Adolescent Health & common problems related to Adolescent Health',
      'To promote and support optimal Breast feeding for Infants',
      'Complementary Feeding',
      'Normal nutrition, assessment and monitoring',
      'Provide nutritional support , assessment and monitoring for common nutritional problems',
      'Obesity in children',
      'Micronutrients in Health and disease-1 (Vitamins ADEK, B Complex and C)',
      'Micronutrients in Health and disease -2: Iron, Iodine, Calcium, Magnesium',
      'Toxic elements and free radicals and oxygen toxicity',
      'Fluid and electrolyte balance',
      'Integrated Management of Neonatal and Childhood Illnesses (IMNCI) Guideline',
      'The National Health Programs: RCH',
      'National Programs, RCH - Universal Immunizations program',
      'Care of the Normal New born, and High risk New born',
      'Genito-Urinary system',
      'Approach to and recognition of a child with possible Rheumatologic problem',
      'Cardiovascular system- Heart Diseases',
      'Diarrhoeal diseases and Dehydration',
      'Malabsorption',
      'Acute and chronic liver disorders',
      'Pediatric Emergencies – Common Pediatric Emergencies',
      'Respiratory system',
      'Anemia and other Hemato-oncologic disorders in children',
      'Systemic Pediatrics-Central Nervous system',
      'Allergic Rhinitis , Atopic Dermatitis, Bronchial Asthma , Urticaria Angioedema',
      'Chromosomal Abnormalities',
      'Endocrinology',
      'Vaccine preventable Diseases - Tuberculosis'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 30, topic: 'Pediatrics'),
    const Chapter(subject: [
      'Mental health',
      'Introduction to psychiatry',
      'Psychotic disorders',
      'Psychotic disorders',
      'Depression',
      'Bipolar disorders',
      'Anxiety disorders',
      'Stress related disorders',
      'Somatoform disorders',
      'Personality disorders',
      'Psychosomatic disorders',
      'Psychosexual and gender identity disorders',
      'Psychiatric disorders in childhood and adolescence',
      'Mental retardation',
      'Psychiatric disorders in the elderly',
      'Psychiatric emergencies',
      'Therapeutics',
      'Miscellaneous'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 16, topic: 'Psychiatry'),
    const Chapter(subject: [
      'Acne',
      'Vitiligo',
      'Papulosquamous disorders',
      'Lichen Planus',
      'Scabies',
      'Pediculosis',
      'Fungal Infections',
      'Viral infections',
      'Leprosy',
      'Sexually Transmitted Diseases',
      'HIV',
      'Dermatitis and Eczema',
      'Vesicubullous Lesions',
      'Urticaria Angioedema',
      'Pyoderma',
      'Collagen Vascular disease',
      'Nutritional Deficiencies and Skin',
      'Systemic diseases and the skin'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 16, topic: 'Dermatology, Venereology & Leprosy'),
    const Chapter(subject: [
      'Introduction to Physical Medicine',
      'Cerebrovascular accident',
      'Cerebral Palsy',
      'Musculoskeletal system',
      'Amputation',
      'Lower motor neruon lesion',
      'Spinal injury',
      'Traumatic brain injury (TBI)',
      'Geriatrics'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 7, topic: 'Physical Medicine and Rehabilitation'),
  ];
  String dropdownValue = '       Second       ';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 245, 244, 255),
            bottomNavigationBar: new Theme(
              data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Color.fromARGB(255, 4, 35, 93),
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.red,
                  textTheme: Theme.of(context).textTheme.copyWith(
                      caption: new TextStyle(
                          color: Colors
                              .yellow))), // sets the inactive color of the `BottomNavigationBar`
              child: new BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                currentIndex: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/openbook.png"),
                    ),
                    label: " ",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/firstaid.png"),
                    ),
                    label: "aid",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/house.png"),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/screen.png"),
                    ),
                    label: "screen",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/question.png"),
                    ),
                    label: "Help",
                  ),
                ],
              ),
            ),
            body: Stack(fit: StackFit.expand, children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/backbutton.png"),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/Started');
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 195, 0),
                                child: Text(
                                  "Courses",
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 4, 35, 93),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 16.3),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/profile.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 30, top: 20, bottom: 10),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          onSurface: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          //make color or elevated button transparent
                                        ),
                                        onPressed: () {
                                          print("You pressed Elevated Button");
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 15.5,
                                            bottom: 15.5,
                                          ),
                                          child: Text("All Courses"),
                                        ))),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      right: 30, top: 20, bottom: 10),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        elevation: 16,
                                        icon: Visibility(
                                            visible: false,
                                            child: Icon(Icons.arrow_downward)),
                                        iconSize: 24,
                                        style: const TextStyle(
                                            color: Colors.deepPurple),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        onChanged: (String? newValue) {
                                          if (newValue != dropdownValue) {
                                            switch (newValue) {
                                              case '       Second       ':
                                                Navigator.pushNamed(
                                                    context, '/Main2');
                                                break;
                                              case '          First       ':
                                                Navigator.pushNamed(
                                                    context, '/Main1');
                                                break;
                                              case '         Third       ':
                                                Navigator.pushNamed(
                                                    context, '/Main3');
                                                break;
                                            }
                                          }
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>[
                                          '       Second       ',
                                          '          First       ',
                                          '         Third       '
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          if (value == dropdownValue) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            );
                                          } else {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            );
                                          }
                                        }).toList(),
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 20, bottom: 10),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          onSurface: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          //make color or elevated button transparent
                                        ),
                                        onPressed: () {
                                          print("You pressed Elevated Button");
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 15.5,
                                            bottom: 15.5,
                                          ),
                                          child: Text("Starred"),
                                        ))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
// scrollDirection: Axis.horizontal,

                          itemCount: cryptoData.length,
                          itemBuilder: (context, index) {
                            final chapter = chapters[index];

                            return Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 16, 0),
                              height: 100,
                              width: double.maxFinite,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          ChapterPage(chapter: chapter),
                                    ));
                                  },
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(7),
                                      child: Stack(children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Stack(
                                            children: <Widget>[
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, top: 5),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          cryptoIcon(cryptoData[
                                                              index]),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          // Spacer(),
                                                          cryptoChange(
                                                              cryptoData[
                                                                  index]),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
            ])));
  }

  Widget cryptoIcon(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Image(
            image: AssetImage('${data['image']}'),
          )),
    );
  }

  Widget cryptoChange(data) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: SizedBox(
        width: 200,
        child: RichText(
          text: TextSpan(
            text: '${data['change']}',
            style: TextStyle(
                fontFamily: "Raleway",
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 4, 35, 93),
                fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                  text: '\n${data['changeValue']}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 35, 93),
                    fontSize: 12,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//--------------------------------------------------------------MAIN 3---------------------------------------------------------------------------

class _Main3State extends State<Main3> {
  var cryptoData = CryptoData2.getData;
  List<Chapter> chapters = [
    const Chapter(subject: [
      'Metabolic response to injury',
      'Shock',
      'Blood and blood components',
      'Burns',
      'Wound healing and wound care',
      'Surgical infections',
      'Surgical Audit and Research',
      'Ethics',
      'Investigation of surgical patient',
      'Pre, intra and post- operative management.',
      'Anaesthesia and pain management',
      'Nutrition and fluid therapy',
      'Transplantation',
      'Basic Surgical Skills',
      'Biohazard disposal',
      'Minimally invasive General Surgery',
      'Trauma',
      'Skin and subcutaneous tissue',
      'Developmental anomalies of face, mouth and jaws',
      'Oropharyngeal cancer',
      'Disorders of salivary glands',
      'Endocrine General Surgery: Thyroid and parathyroid',
      'Adrenal glands',
      'Pancreas',
      'Breast',
      'Cardio-thoracic General Surgery- Chest - Heart and Lungs',
      'Vascular diseases',
      'Abdomen',
      'Urinary System ',
      'Penis, Testis and scrotum'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 28, topic: 'General Surgery'),
    const Chapter(subject: [
      'Visual Acuity Assessment',
      'Lids and Adnexa, Orbit',
      'Conjunctiva',
      'Corneas',
      'Sclera',
      'Iris and Anterior chamber',
      'Lens',
      'Retina & optic Nerve',
      'Miscellaneous'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 9, topic: 'Opthalmology'),
    const Chapter(subject: [
      'Anatomy and Physiology of ear, nose, throat, head & neck',
      'Clinical Skills',
      'Diagnostic and Therapeutic procedures in ENT',
      'Management of diseases of ear, nose & throat'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 4, topic: 'Otorhinolaryngology'),
    const Chapter(subject: [
      'Demographic and Vital Statistics',
      'Anatomy of the female reproductive tract (Basic anatomy and embryology)',
      'Physiology of conception ',
      'Development of the fetus and the placenta ',
      'Preconception counselling',
      'Diagnosis of pregnancy',
      'Maternal Changes in pregnancy',
      'Antenatal Care',
      'Complications in early pregnancy',
      'Antepartum haemorrhage',
      'Multiple pregnancies',
      'Medical Disorders in pregnancy',
      'Labour ',
      'Abnormal Lie and Presentation; Maternal Pelvis',
      'Operative obstetrics',
      'Complications of the third stage',
      'Lactation',
      'Care of the new born ',
      'Normal and abnormal puerperium.',
      'Medical termination of pregnancy',
      'Contraception',
      'Vaginal discharge',
      'Normal and abnormal puberty',
      'Abnormal uterine bleeding ',
      'Amenorrhea',
      'Genital injuries and fistulae ',
      'Genital infections ',
      'Infertility ',
      'Uterine fibroids ',
      'PCOS and hirsutism ',
      'Uterine prolapse ',
      'Menopause ',
      'Benign, Pre-malignant (CIN) and Malignant Lesions of the Cervix',
      'Benign and malignant diseases of the uterus and the ovaries',
      'Obstetrics & Gynecological skills - I',
      'Obstetrics & Gynecological skills - II',
      'Obstetrics & Gynecological skills - III '
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter'
    ], number: 35, topic: 'Obstetrics and Gynaecology'),
    const Chapter(subject: [
      'Skeletal Trauma, Poly trauma',
      'Fractures',
      'Musculoskeletal Infection ',
      'Skeletal Tuberculosis ',
      'Rheumatoid Arthritis and associated inlammatory disorders',
      'Degenerative disorders ',
      'Metabolic bone disorders ',
      'Poliomyelitis',
      'Bone Tumors ',
      'Peripheral nerve injuries',
      'Congenital lesions',
      'Procedural Skills ',
      'Counselling Skills '
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 13, topic: 'Orthopedics'),
    const Chapter(subject: [
      'Anaesthesiology as a specialty',
      'Cardiopulmonary resuscitation',
      'Preoperative evaluation and medication',
      'General Anaesthesia',
      'Regional anaesthesia',
      'Post-anaesthesia recovery',
      'Intensive Care Management',
      'Pain and its management',
      'Fluids',
      'Patient safety'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 10, topic: 'Anaesthesiology'),
    const Chapter(subject: [
      'Radiological investigations and Radiation safety',
    ], chapter: [
      'Chapter',
    ], number: 1, topic: 'Radiodiagnosis'),
    const Chapter(subject: [
      'Principles of Radiation Oncology (Radiotherapy)',
      'Radiation Protection',
      'Radiobiology & Chemoradiation',
      'Radiation Treatment Delivery & outcome',
      'Cancer Prevention & Registries'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 5, topic: 'Radiotherapy'),
    const Chapter(subject: [
      'Dental Caries',
      'Edentulous state',
      'Malocclusion',
      'Oral cancer',
      'Periodontal disease'
    ], chapter: [
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
      'Chapter',
    ], number: 5, topic: 'Dentistry'),
  ];
  String dropdownValue = '         Third       ';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 245, 244, 255),
            bottomNavigationBar: new Theme(
              data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Color.fromARGB(255, 4, 35, 93),
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.red,
                  textTheme: Theme.of(context).textTheme.copyWith(
                      caption: new TextStyle(
                          color: Colors
                              .yellow))), // sets the inactive color of the `BottomNavigationBar`
              child: new BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                currentIndex: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/openbook.png"),
                    ),
                    label: " ",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/firstaid.png"),
                    ),
                    label: "aid",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/house.png"),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/screen.png"),
                    ),
                    label: "screen",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/question.png"),
                    ),
                    label: "Help",
                  ),
                ],
              ),
            ),
            body: Stack(fit: StackFit.expand, children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/backbutton.png"),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/Started');
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(15, 0, 195, 0),
                                child: Text(
                                  "Courses",
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 4, 35, 93),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 16.3),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/profile.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 30, top: 20, bottom: 10),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          onSurface: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          //make color or elevated button transparent
                                        ),
                                        onPressed: () {
                                          print("You pressed Elevated Button");
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 15.5,
                                            bottom: 15.5,
                                          ),
                                          child: Text("All Courses"),
                                        ))),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                      right: 30, top: 20, bottom: 10),
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        value: dropdownValue,
                                        elevation: 16,
                                        icon: Visibility(
                                            visible: false,
                                            child: Icon(Icons.arrow_downward)),
                                        iconSize: 24,
                                        style: const TextStyle(
                                            color: Colors.deepPurple),
                                        underline: Container(
                                          height: 2,
                                          color: Colors.deepPurpleAccent,
                                        ),
                                        onChanged: (String? newValue) {
                                          if (newValue != dropdownValue) {
                                            switch (newValue) {
                                              case '          First       ':
                                                Navigator.pushNamed(
                                                    context, '/Main1');
                                                break;
                                              case '       Second       ':
                                                Navigator.pushNamed(
                                                    context, '/Main2');
                                                break;
                                              case '         Third       ':
                                                Navigator.pushNamed(
                                                    context, '/Main3');
                                                break;
                                            }
                                          }
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: <String>[
                                          '          First       ',
                                          '       Second       ',
                                          '         Third       ',
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          if (value == dropdownValue) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            );
                                          } else {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: 0,
                                                  bottom: 0,
                                                ),
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              ),
                                            );
                                          }
                                        }).toList(),
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 20, top: 20, bottom: 10),
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color.fromARGB(255, 55, 213, 214),
                                        Color.fromARGB(255, 94, 41, 159),
                                        //add more colors
                                      ]),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.transparent,
                                          onSurface: Colors.transparent,
                                          shadowColor: Colors.transparent,
                                          //make color or elevated button transparent
                                        ),
                                        onPressed: () {
                                          print("You pressed Elevated Button");
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: 15.5,
                                            bottom: 15.5,
                                          ),
                                          child: Text("Starred"),
                                        ))),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
// scrollDirection: Axis.horizontal,

                          itemCount: cryptoData.length,
                          itemBuilder: (context, index) {
                            final chapter = chapters[index];

                            return Container(
                              padding: EdgeInsets.fromLTRB(20, 10, 16, 0),
                              height: 100,
                              width: double.maxFinite,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                elevation: 5,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          ChapterPage(chapter: chapter),
                                    ));
                                  },
                                  child: Container(
                                    child: Padding(
                                      padding: EdgeInsets.all(7),
                                      child: Stack(children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Stack(
                                            children: <Widget>[
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, top: 5),
                                                  child: Column(
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          cryptoIcon(cryptoData[
                                                              index]),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          // Spacer(),
                                                          cryptoChange(
                                                              cryptoData[
                                                                  index]),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          SizedBox(
                                                            width: 20,
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ))
                                            ],
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
            ])));
  }

  Widget cryptoIcon(data) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Image(
            image: AssetImage('${data['image']}'),
          )),
    );
  }

  Widget cryptoChange(data) {
    return Padding(
      padding: EdgeInsets.only(left: 50),
      child: SizedBox(
        width: 200,
        child: RichText(
          text: TextSpan(
            text: '${data['change']}',
            style: TextStyle(
                fontFamily: "Raleway",
                fontWeight: FontWeight.w900,
                color: Color.fromARGB(255, 4, 35, 93),
                fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                  text: '\n${data['changeValue']}',
                  style: TextStyle(
                    color: Color.fromARGB(255, 4, 35, 93),
                    fontSize: 12,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

//------------------------------------------------------------------SLIDES----------------------------------------------------------

class _SlidesState extends State<Slides> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 245, 244, 255),
            bottomNavigationBar: new Theme(
              data: Theme.of(context).copyWith(
                  // sets the background color of the `BottomNavigationBar`
                  canvasColor: Color.fromARGB(255, 4, 35, 93),
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.red,
                  textTheme: Theme.of(context).textTheme.copyWith(
                      caption: new TextStyle(
                          color: Colors
                              .yellow))), // sets the inactive color of the `BottomNavigationBar`
              child: new BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                currentIndex: 0,
                items: [
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/openbook.png"),
                    ),
                    label: " ",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/firstaid.png"),
                    ),
                    label: "aid",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/house.png"),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/screen.png"),
                    ),
                    label: "screen",
                  ),
                  BottomNavigationBarItem(
                    icon: Image(
                      image: AssetImage("assets/images/question.png"),
                    ),
                    label: "Help",
                  ),
                ],
              ),
            ),
            body: Stack(fit: StackFit.expand, children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              GestureDetector(
                                child: Image(
                                  image: AssetImage(
                                      "assets/images/backbutton.png"),
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, '/Started');
                                },
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 16.3),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/profile.png"),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120),
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        front: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 4, 35, 94),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0))),
                          width: 300,
                          height: 400,
                          // color: Colors.red,
                        ),
                        back: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 4, 35, 94),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0))),
                          width: 300,
                          height: 400,
                          // color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}
