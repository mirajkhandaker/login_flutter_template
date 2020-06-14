import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginfluttertemplate/screens/registration_screen.dart';
import 'package:loginfluttertemplate/widgets/custom_flat_button.dart';
import 'package:loginfluttertemplate/widgets/input_text_field.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const id = "forgot_password";
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  String _forgotMessage = "Enter your email address associated with your "
      "account we will send you a link to reset your password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container( 
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.userLock,
                  size: 50.0,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Text(
                  'FORGOT PASSWORD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  _forgotMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                InputTextField(
                  hintText: 'Enter your email',
                  inputFieldIcon: Icons.email,
                  inputChanged: null,
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomFlatButton(
                    buttonPressed: (){},
                    buttonChield: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'SUBMIT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                    buttonBgColor: Colors.orange
                ),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
