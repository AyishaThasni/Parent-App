import 'package:flutter/material.dart';
import '../Constants/colors.dart';

//The appbar of the application
class ParentAppBars {
  static AppBar PageAppBar(BuildContext ctx, String title) {
    return AppBar(
      leading: Icon(Icons.menu),
      title: Text(title),
      backgroundColor: primaryRed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(14),
        ),
      ),
    );
  }
}
