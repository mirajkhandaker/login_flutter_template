import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  prefixIcon: Icon(
    Icons.email,
    color: Colors.black54,
  ),
  hintText: 'Enter your valu',
  hintStyle: TextStyle(color: Colors.black54),
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.grey, width: 1.0),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.orange, width: 2.0),
  ),
);