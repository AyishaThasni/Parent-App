import 'package:flutter/material.dart';

// This widget is used for the text fields, mainly used in authentication section
class AppTextField extends StatelessWidget {
  final String labelText;
  const AppTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelStyle: TextStyle(
            fontSize: 16, fontFamily: 'Montserrat', color: Color(0xff707070)),
        labelText: labelText,
      ),
    );
  }
}
