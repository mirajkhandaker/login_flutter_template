import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loginfluttertemplate/screens/login_screen.dart';
import 'package:loginfluttertemplate/widgets/custom_flat_button.dart';
import 'package:loginfluttertemplate/widgets/input_text_field.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = "registration_id";
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Create Account',
              textAlign: TextAlign.left,
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
              hintText: 'First Name',
              inputFieldIcon: FontAwesomeIcons.user,
              inputChanged: null,
            ),
            SizedBox(
              height: 20.0,
            ),
            InputTextField(
              hintText: 'Last Name',
              inputFieldIcon: FontAwesomeIcons.user,
              inputChanged: null,
            ),
            SizedBox(
              height: 20.0,
            ),
            InputTextField(
                inputChanged: null,
                hintText: 'Email',
                inputFieldIcon: FontAwesomeIcons.envelope
            ),
            SizedBox(
              height: 20.0,
            ),
            InputTextField(
                inputChanged: null,
                hintText: 'Password',
                inputFieldIcon: FontAwesomeIcons.lock
            ),
            SizedBox(
              height: 20.0,
            ),
            InputTextField(
                inputChanged: null,
                hintText: 'Confirm Password',
                inputFieldIcon: FontAwesomeIcons.lock
            ),
            SizedBox(
              height: 20.0,
            ),
            CustomFlatButton(
                buttonPressed: (){},
                buttonChield: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'SIGN UP',
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
      ) ,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Already have an account',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
              child: Text(
                'Login',
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
