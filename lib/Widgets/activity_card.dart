import 'package:flutter/material.dart';

//The Widget used in the home scree to represent activities in a card form
class ActivityCards {
  static Column ActivityCard(BuildContext ctx, String title, Image image) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(31)),
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              )),
          width: 111,
          height: 110,
          child: image,
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff030303),
            fontSize: 12,
            fontFamily: 'Montserrat-Medium',
            letterSpacing: -0.36,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
