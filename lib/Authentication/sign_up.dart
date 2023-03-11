import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:parent_app/Authentication/login.dart';
import 'package:parent_app/Constants/colors.dart';
import 'package:parent_app/Widgets/button.dart';
import 'package:parent_app/Widgets/text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21, top: 230, right: 21),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Create Parent Account',
            style: TextStyle(
              color: primaryBlack,
              fontSize: 20,
              fontFamily: 'Montserrat',
              letterSpacing: -0.6,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Sign Up',
            style: TextStyle(
              color: primaryRed,
              fontSize: 32,
              fontFamily: 'Montserrat',
              letterSpacing: -0.96,
              fontWeight: FontWeight.bold,
            ),
          ),

          //The text field widgets are called here
          AppTextField(labelText: "alex.pinto@gmail.com"),
          SizedBox(height: 2),
          AppTextField(labelText: "Full Name"),
          SizedBox(height: 2),
          AppTextField(labelText: "Mobile"),
          SizedBox(height: 2),
          AppTextField(labelText: "Password"),
          SizedBox(height: 16),

          //This text span is used for the following text
          Text.rich(TextSpan(
              text: 'By continuing, you agree to our ',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff707070),
                  fontFamily: 'Montserrat'),
              children: <TextSpan>[
                TextSpan(
                    text: 'Terms of Service',
                    style: TextStyle(
                      fontSize: 12,
                      color: primaryBlue,
                      fontFamily: 'Montserrat',
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                TextSpan(
                    text: ' and ',
                    style: TextStyle(fontSize: 12, color: Color(0xff707070)),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              fontSize: 12,
                              color: primaryBlue,
                              fontFamily: 'Montserrat'),
                          recognizer: TapGestureRecognizer()..onTap = () {})
                    ]),
              ])),
          const SizedBox(height: 16),

          //Button is called here
          AppButton(text: 'Continue'),
          SizedBox(height: 16),

          //Text span for the following text
          Center(
            child: Text.rich(
              TextSpan(
                text: 'Joined us before?',
                style: TextStyle(
                    fontSize: 12,
                    color: Color(0xff707070),
                    fontFamily: 'Montserrat'),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Login',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryBlue,
                        fontFamily: 'Montserrat',
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
