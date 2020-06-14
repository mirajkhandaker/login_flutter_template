import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginfluttertemplate/screens/forgot_password.dart';
import 'package:loginfluttertemplate/screens/registration_screen.dart';
import 'package:loginfluttertemplate/widgets/custom_flat_button.dart';
import 'package:loginfluttertemplate/widgets/input_text_field.dart';

class LoginScreen extends StatelessWidget {
  static const id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Hero(
                    tag: 'logo',
                    child: Icon(
                      FontAwesomeIcons.bowlingBall,
                      size: 50.0,
                      color: Colors.orange,
                    )
                ),
                Text(
                  'Logo Here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InputTextField(
                  hintText: 'Enter your email',
                  inputFieldIcon: Icons.email,
                  inputChanged: null,
                ),
                SizedBox(
                  height: 20.0,
                ),
                InputTextField(
                    inputChanged: null,
                    hintText: 'Password',
                    inputFieldIcon: FontAwesomeIcons.lock
                ),
                FlatButton(
                    padding: EdgeInsets.only(right: 0),
                    onPressed: () {
                      Navigator.pushNamed(context, ForgotPasswordScreen.id);
                    },
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18.0
                        ),
                      ),
                    )
                ),
                CustomFlatButton(
                    buttonPressed: (){},
                    buttonChield: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'LOGIN',
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
                SizedBox(
                  height: 15.0,
                ),
                Text(
                    'OR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CustomFlatButton(
                    buttonPressed: (){},
                    buttonChield: Row(
                      children: <Widget>[
                        Icon(
                            FontAwesomeIcons.facebookF
                        ),
                        Expanded(
                          child: Text('LOGIN WITH FACEBOOK',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize:18.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        )
                      ],
                    ),
                    buttonBgColor: Colors.blue
                ),
              ],
            ),
          ),
        ),
      ) ,
    bottomNavigationBar: Padding(
      padding: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account?',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 18.0
          ),
          ),
          FlatButton(
            onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            },
            child: Text(
              'Sign Up',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.orange,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900
              ),
            ),
          )
        ],
      ),
    ),
    );
  }
}
