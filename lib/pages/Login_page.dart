// ignore_for_file: file_names, camel_case_types

import "package:flutter/material.dart";
import "package:food_app_24_02/pages/button.dart";

class login_pages extends StatelessWidget {
  const login_pages({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: screenheight / 2.8,
            right: 5,
            child: Image.asset(
              'images/logo.png',
              height: screenheight,
              width: screenwidth,
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(115, 117, 106, 106),
                  borderRadius: BorderRadius.circular(35)),
              height: screenheight / 2,
              width: screenwidth / 1.23,
              child: const Column(children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Gilgan',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text('Email :',
                        style: TextStyle(
                            fontFamily: 'Gilgan',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black)),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text('Password :',
                        style: TextStyle(
                          fontFamily: 'Gilgan',
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        )),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)))),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MyButton(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                          fontFamily: 'Gilgan',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    Button_2(),
                  ],
                )
              ]),
            ),
          ),
          Positioned(
              top: screenheight / 1.5,
              left: -80,
              child: SingleChildScrollView(
                child: Image.asset(
                  'images/3.png',
                  height: 600,
                ),
              ))
        ],
      ),
    );
  }
}

class Button_2 extends StatelessWidget {
  const Button_2({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          
        },
        child: const Text(
          'sign-up',
          style: TextStyle(
              color: Color.fromARGB(179, 73, 112, 32),
              fontFamily: 'Gilgan',
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ));
  }
}
