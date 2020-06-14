import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginfluttertemplate/screens/login_screen.dart';

class SpalishScreen extends StatefulWidget {
  static const id = 'spalish_screen';
  @override
  _SpalishScreenState createState() => _SpalishScreenState();
}

class _SpalishScreenState extends State<SpalishScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFAD2B),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                  tag: 'logo',
                  child: Icon(
                    FontAwesomeIcons.bowlingBall,
                    size: 70.0,
                  )
              ),
              Text(
                'Logo Here',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.white
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
