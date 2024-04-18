// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:food_app_24_02/pages/Page_1_.dart';
import 'package:page_transition/page_transition.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context,
            PageTransition(
                child: const Page_1(),
                type: PageTransitionType.leftToRight,
                curve: Curves.elasticOut,
                duration: Duration(milliseconds: 280)));
      },
      child: Text('Sign-in',
          style: TextStyle(color: Colors.white, fontFamily: 'Gilgan')),
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(179, 73, 112, 32),
      ),
    );
  }
}
