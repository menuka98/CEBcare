import 'dart:async';
import 'package:ceb_care/startpage.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => StartScreen(),
      ));
    });
  }

  // added test yourself
  // and made the text to align at center 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(195, 0, 10, 10),
          child: Container(
            width: 2,
            height: 1,
            constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/ceblogo.png"),
                fit: BoxFit.fill)),
          ),
        ),
      ),
    );
  }
}