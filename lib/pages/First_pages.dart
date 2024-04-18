// ignore_for_file: sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors, file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:food_app_24_02/pages/Login_page.dart';
import 'package:page_transition/page_transition.dart';

class First_pages extends StatelessWidget {
  const First_pages({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenwidth,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Thrid_pages(),
                                type: PageTransitionType.leftToRight,
                                curve: Curves.elasticOut,
                                duration: Duration(milliseconds: 280)));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(179, 73, 112, 32),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Skip',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 247, 246, 246),
                                fontFamily: 'Gilgan',
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "images/Untitled-1.png",
                            height: 60,
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: 3,
                ),
              ]),
            ),
            Expanded(
              flex: 10,
              child: Stack(
                children: [
                  Positioned(
                    right: screenwidth / 3.7,
                    top: -screenheight / 20,
                    child: Transform.rotate(
                      angle: 5.95,
                      child: Positioned(
                          child: Image.asset(
                        height: screenheight,
                        "images/1.png",
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      height: 120,
                      width: 280,
                      child: const Text(
                        "Food is symbolic of love when words are inadequate.",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gilgan',
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 17,
                    top: 0,
                    child: Text(
                      "-",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(179, 73, 112, 32),
                        fontFamily: 'antero',
                        fontSize: 150,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 17,
                    top: 45,
                    child: Container(
                      height: 150,
                      width: 250,
                      child: const Column(
                        children: [
                          Text(
                            "Delicions..",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromARGB(179, 73, 112, 32),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'antero',
                              fontSize: 45,
                            ),
                          ),
                          // Text(
                          //   "-",
                          //   textAlign: TextAlign.right,
                          //   style: TextStyle(
                          //     color: Colors.lightGreen[600],
                          //     fontWeight: FontWeight.bold,
                          //     fontFamily: 'antero',
                          //     fontSize: 100,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: screenwidth,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 2,
                      width: screenwidth / 1.2,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Second_pages(),
                                  type: PageTransitionType.leftToRight,
                                  curve: Curves.elasticOut,
                                  duration: Duration(milliseconds: 280)));
                        },
                        child: Text('Next'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromARGB(179, 73, 112, 32),
                            textStyle: const TextStyle(
                                fontFamily: 'Gilgan', fontSize: 25),
                            fixedSize: Size(300, 6)),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class Second_pages extends StatelessWidget {
  const Second_pages({super.key});
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenwidth,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: First_pages(),
                                  type: PageTransitionType.rightToLeft,
                                  curve: Curves.elasticOut,
                                  duration: Duration(milliseconds: 280)));
                        },
                        style: ElevatedButton.styleFrom(elevation: 0),
                        child: Image.asset(
                          "images/2.png",
                          height: 60,
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 23, horizontal: 8),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: Thrid_pages(),
                                    type: PageTransitionType.leftToRight,
                                    curve: Curves.elasticOut,
                                    duration: Duration(milliseconds: 280)));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(179, 73, 112, 32),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 3),
                            child: Row(
                              children: [
                                Text(
                                  'Skip',
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 247, 246, 246),
                                      fontFamily: 'Gilgan',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Image.asset(
                                  "images/Untitled-1.png",
                                  height: 60,
                                ),
                              ],
                            ),
                          )),
                    ),
                  ]),
            ),
            Expanded(
              flex: 11,
              child: Stack(
                children: [
                  Positioned(
                    right: screenwidth / 3.7,
                    bottom: screenheight / 10,
                    child: Transform.rotate(
                      angle: 5.95,
                      child: Positioned(
                          child: Image.asset(
                        height: screenheight / 1.4,
                        "images/Picsart_24-02-26_14-03-10-038.png",
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      height: 160,
                      width: 350,
                      child: const Text(
                        "Explore our menu's culinary wonders,saftisfy cravings with ease!",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gilgan',
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 130,
                    top: 30,
                    child: Text(
                      "-",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(179, 73, 112, 32),
                        fontFamily: 'antero',
                        fontSize: 100,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 17,
                    top: 45,
                    child: Container(
                      height: 150,
                      width: 250,
                      child: const Column(
                        children: [
                          Text(
                            "Tasty..",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromARGB(179, 73, 112, 32),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'antero',
                              fontSize: 45,
                            ),
                          ),
                          // Text(
                          //   "-",
                          //   textAlign: TextAlign.right,
                          //   style: TextStyle(
                          //     color: Colors.lightGreen[600],
                          //     fontWeight: FontWeight.bold,
                          //     fontFamily: 'antero',
                          //     fontSize: 100,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: screenwidth,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 2,
                      width: screenwidth / 1.2,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: Thrid_pages(),
                                  type: PageTransitionType.leftToRight,
                                  curve: Curves.elasticOut,
                                  duration: Duration(milliseconds: 280)));
                        },
                        child: Text('Next'),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromARGB(179, 73, 112, 32),
                            textStyle: const TextStyle(
                                fontFamily: 'Gilgan', fontSize: 25),
                            fixedSize: Size(300, 6)),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class Thrid_pages extends StatelessWidget {
  const Thrid_pages({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenwidth,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: Second_pages(),
                          type: PageTransitionType.rightToLeft,
                          curve: Curves.elasticOut,
                          duration: Duration(milliseconds: 280)));
                },
                style: ElevatedButton.styleFrom(elevation: 0),
                child: Image.asset(
                  "images/2.png",
                  height: 60,
                )),
                              ]),
            ),
            Expanded(
              flex: 11,
              child: Stack(
                children: [
                  Positioned(
                    right: screenwidth / 20,
                    top: screenheight * -0.1,
                    child: Transform.rotate(
                      angle: 5.95,
                      child: Positioned(
                          child: Image.asset(
                        height: screenheight,
                        "images/3.png",
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 10,
                    child: Container(
                      height: 160,
                      width: 230,
                      child: const Text(
                        "Taste the world on your plate..",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff808080),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Gilgan',
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 17,
                    top: 0,
                    child: Text(
                      "-",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(179, 73, 112, 32),
                        fontFamily: 'antero',
                        fontSize: 150,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 17,
                    top: 45,
                    child: Container(
                      height: 150,
                      width: 250,
                      child: const Column(
                        children: [
                          Text(
                            "Hygiene..",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color.fromARGB(179, 73, 112, 32),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'antero',
                              fontSize: 45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Container(
                  width: screenwidth,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: screenwidth / 1.2,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: login_pages(),
                                  type: PageTransitionType.leftToRight,
                                  curve: Curves.elasticOut,
                                  duration: Duration(milliseconds: 280)));
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100,
                            ),
                            Text('GET STARTED'),
                            SizedBox(
                              width: 7,
                            ),
                            Image.asset(
                              "images/Untitled-1.png",
                              height: 150,
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromARGB(179, 73, 112, 32),
                            textStyle: const TextStyle(
                                fontFamily: 'Gilgan', fontSize: 25),
                            fixedSize: Size(300, 6)),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
