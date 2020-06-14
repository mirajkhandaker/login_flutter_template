import 'package:flutter/material.dart';
import 'package:loginfluttertemplate/constant/constant.dart';

class InputTextField extends StatelessWidget {
  InputTextField({
    @required this.inputChanged,
    @required this.hintText,
    @required this.inputFieldIcon,
    this.focus = false
  });

  final Function inputChanged;
  final String hintText;
  final IconData inputFieldIcon;
  bool focus;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: focus,
        onChanged: inputChanged,
        style: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w900
        ),
        textAlign: TextAlign.left,
        decoration:kTextFieldDecoration.copyWith(
          hintText: hintText,
          prefixIcon: Icon(
            inputFieldIcon,
            color: Colors.black54,
          )
        ),
    );
  }
}