import 'package:flutter/material.dart';
import 'package:parent_app/Constants/colors.dart';
import 'package:parent_app/Home/home.dart';

//Buttons used in the app
class AppButton extends StatelessWidget {
  final String text;
  const AppButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryRed,
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const home_page()),
        );
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
