import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

@override
Widget build(BuildContext context) => MaterialApp(
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
                  padding: EdgeInsets.only(left: 20, top: 25, bottom: 250),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            child: Image(
                              image: AssetImage("assets/images/backbutton.png"),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, '/');
                            },
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(right: 16.3),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Image(
                                  image:
                                      AssetImage("assets/images/profile.png"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ])));

Widget buildImage(String urlImage, int index) => ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        color: Colors.grey,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    );
