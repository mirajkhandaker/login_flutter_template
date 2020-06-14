import 'package:flutter/material.dart';
import 'package:loginfluttertemplate/screens/forgot_password.dart';
import 'package:loginfluttertemplate/screens/login_screen.dart';
import 'package:loginfluttertemplate/screens/registration_screen.dart';
import 'package:loginfluttertemplate/screens/spalish_screen.dart';

void main() => runApp(LoginFlutterTemplate());

class LoginFlutterTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute:  SpalishScreen.id,
      routes: {
        SpalishScreen.id: (context) => SpalishScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ForgotPasswordScreen.id: (context) => ForgotPasswordScreen()
      },
    );
  }
}
