import 'package:flutter/material.dart';
import 'package:parent_app/Authentication/forgot_password.dart';
import 'package:parent_app/Constants/colors.dart';
import 'package:parent_app/Widgets/button.dart';
import 'package:parent_app/Widgets/text_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
            'Login Parent Account',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'Montserrat',
              letterSpacing: -0.6,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Login',
            style: TextStyle(
              color: Color(0xff992329),
              fontSize: 32,
              fontFamily: 'Montserrat-Bold',
              letterSpacing: -0.96,
              fontWeight: FontWeight.bold,
            ),
          ),

          //Text fields are called here
          SizedBox(height: 4),
          AppTextField(labelText: "Email ID"),
          SizedBox(height: 2),
          AppTextField(labelText: "Password"),
          SizedBox(height: 16),

          //This container is for the "forgot password?"
          Container(
            margin: EdgeInsets.only(left: 214),
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 14,
                    color: primaryBlue,
                    fontFamily: 'Montserrat-Medium'),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgotPass()),
                );
              },
              child: const Text('Forgot Password?'),
            ),
          ),

          //Button is called here
          AppButton(text: 'Login'),
          SizedBox(height: 22),
          Center(
            child: Text(
              'OR',
              style: TextStyle(
                color: primaryBlack,
                fontSize: 32,
                fontFamily: 'Montserrat-Regular',
              ),
            ),
          ),
          SizedBox(height: 22),
          Wrap(
            direction: Axis.horizontal,
            children: [
              SizedBox(width: 54),
              Image(image: AssetImage('lib/assets/images/search (6).png')),
              SizedBox(width: 26.5),
              Text(
                'Login with Google',
                style: TextStyle(
                    color: primaryBlack,
                    fontSize: 18,
                    fontFamily: 'Montserrat-Regular'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
