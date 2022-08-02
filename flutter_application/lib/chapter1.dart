import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/main.dart';

class ChapterPage extends StatelessWidget {
  final Chapter chapter;

  final urlImages = [
    "assets/images/hero.png",
    "assets/images/hero.png",
    "assets/images/hero.png",
    "assets/images/hero.png",
    "assets/images/hero.png",
  ];

  ChapterPage({
    Key? key,
    required this.chapter,
  }) : super(key: key);

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
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 100),
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 200,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
                    itemCount: urlImages.length,
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImages[index];
                      return buildImage(urlImage, index);
                    }),
              ),
            ),
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
                                image:
                                    AssetImage("assets/images/backbutton.png"),
                              ),
                              onTap: () {
                                Navigator.pushNamed(context, '/');
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: SizedBox(
                                width: 250,
                                child: Text(
                                  chapter.topic,
                                  style: TextStyle(
                                    fontFamily: "Raleway",
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 4, 35, 93),
                                  ),
                                ),
                              ),
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
                  Expanded(
                    child: ListView.builder(
// scrollDirection: Axis.horizontal,

                        itemCount: chapter.number,
                        itemBuilder: (context, index) {
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
                                  Navigator.of(context).push(MaterialPageRoute(
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
                                                padding: const EdgeInsets.only(
                                                    left: 5, top: 5),
                                                child: Column(
                                                  children: <Widget>[
                                                    Row(
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  left: 0),
                                                          child: Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Image(
                                                                image: AssetImage(
                                                                    'assets/images/card1.png'),
                                                              )),
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        // Spacer(),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 50,
                                                          ),
                                                          child: SizedBox(
                                                            width: 200,
                                                            child: RichText(
                                                              text: TextSpan(
                                                                text: chapter
                                                                        .subject[
                                                                    index],
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        "Raleway",
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            4,
                                                                            35,
                                                                            93),
                                                                    fontSize:
                                                                        14),
                                                                children: <
                                                                    TextSpan>[
                                                                  TextSpan(
                                                                      text:
                                                                          "\n"),
                                                                  TextSpan(
                                                                      text: chapter
                                                                              .chapter[
                                                                          index],
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color.fromARGB(
                                                                            255,
                                                                            4,
                                                                            35,
                                                                            93),
                                                                        fontSize:
                                                                            12,
                                                                        fontFamily:
                                                                            "Raleway",
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      )),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
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
