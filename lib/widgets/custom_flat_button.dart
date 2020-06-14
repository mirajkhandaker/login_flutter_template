import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {

  CustomFlatButton({
    @required this.buttonPressed,
    @required this.buttonChield,
    @required this.buttonBgColor
  });

  final Function buttonPressed;
  final Widget buttonChield;
  final Color buttonBgColor;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(15.0),
      onPressed: buttonPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)
      ),
      child: buttonChield,
      color: buttonBgColor,
      textColor: Colors.white,
    );
  }
}