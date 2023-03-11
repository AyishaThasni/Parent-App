import 'package:flutter/material.dart';
import '../Constants/colors.dart';
import '../Widgets/button.dart';
import '../Widgets/text_field.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({Key? key}) : super(key: key);

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
            'Forgot Password?',
            style: TextStyle(
              color: primaryRed,
              fontSize: 32,
              fontFamily: 'Montserrat-Bold',
              letterSpacing: -0.96,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Dont worry! It happens. Please enter the address associated with your account',
            style: TextStyle(
              color: mediumGrey,
              fontSize: 16,
              fontFamily: 'Montserrat-Regular',
            ),
          ),
          SizedBox(height: 35),

          //Text field is called here
          AppTextField(labelText: "Email ID / Mobile Number"),
          SizedBox(height: 35),

          //Button is called here
          AppButton(text: 'Submit'),
        ],
      ),
    );
  }
}
