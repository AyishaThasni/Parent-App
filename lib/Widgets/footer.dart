import 'package:flutter/material.dart';
import '../Constants/colors.dart';

//This widget is the bottom navigation bar with icons and labels
class Footer {
  static Container FooterBar(BuildContext ctx) {
    return Container(
      height: 90,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(23), topRight: Radius.circular(23)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          iconSize: 23.0,
          selectedIconTheme: const IconThemeData(size: 23.0, color: primaryRed),
          selectedItemColor: primaryRed,
          unselectedItemColor: primaryBlack,
          selectedFontSize: 10.0,
          unselectedFontSize: 10,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/Group 133.png"),
                color: primaryBlack,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/Group 76.png"),
                color: primaryBlack,
              ),
              label: "Leaves",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/Group 80.png"),
                color: primaryBlack,
              ),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/Group 78.png"),
                color: primaryBlack,
              ),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("lib/assets/images/Group 74.png"),
                color: primaryBlack,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
