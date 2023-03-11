import 'package:flutter/material.dart';

//This widget is the oval shaped cards used in the home screen of the application
class HomeCards {
  static Container HomeCard(BuildContext ctx, String title, Image image) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(32)),
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        width: 170,
        height: 110,
        child: Column(
          children: <Widget>[
            SizedBox(height: 16),
            image,
            Text(
              title,
              style: TextStyle(
                color: Color(0xff030303),
                fontSize: 16,
                fontFamily: 'Montserrat-Medium',
                letterSpacing: -0.48,
              ),
            )
          ],
        ));
  }
}
