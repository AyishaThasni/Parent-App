import 'package:flutter/material.dart';
import 'package:parent_app/Widgets/activity_card.dart';
import 'package:parent_app/Widgets/app_bar.dart';
import 'package:parent_app/Widgets/footer.dart';
import '../Constants/colors.dart';
import '../Widgets/home_cards.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      //App bar is called here
      appBar: ParentAppBars.PageAppBar(context, 'Home'),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21, top: 21, right: 21, bottom: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        // Student image with name and class given here
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                backgroundImage:
                    AssetImage('lib/assets/images/Mask Group 15.png'),
                radius: 30,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 6),
                  Text(
                    'Alex Dan',
                    style: TextStyle(
                      color: primaryBlack,
                      fontSize: 20,
                      fontFamily: 'Montserrat-Bold',
                      fontWeight: FontWeight.bold,
                      letterSpacing: -0.6,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    '5 STD - A',
                    style: TextStyle(
                      color: primaryBlack,
                      fontSize: 14,
                      fontFamily: 'Montserrat-Medium',
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 28),

          //this wrap is used to wrap the main containers in the home page
          Wrap(
            spacing: 8,
            runSpacing: 8.0,
            children: <Widget>[
              HomeCards.HomeCard(
                context,
                'Home',
                Image(image: AssetImage('lib/assets/images/Group 96.png')),
              ),
              HomeCards.HomeCard(
                context,
                'Messages',
                Image(image: AssetImage('lib/assets/images/Group 100.png')),
              ),
              HomeCards.HomeCard(
                context,
                'Homework',
                Image(image: AssetImage('lib/assets/images/Group 104.png')),
              ),
              HomeCards.HomeCard(
                context,
                'Track Location',
                Image(image: AssetImage('lib/assets/images/Group 98.png')),
              ),
              HomeCards.HomeCard(
                context,
                'Marks',
                Image(image: AssetImage('lib/assets/images/Group 106.png')),
              ),
              HomeCards.HomeCard(
                context,
                'Leaves',
                Image(image: AssetImage('lib/assets/images/Group 102.png')),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Activities',
            style: TextStyle(
              color: primaryBlack,
              fontSize: 20,
              fontFamily: 'Montserrat-Bold',
              fontWeight: FontWeight.bold,
              letterSpacing: -0.6,
            ),
          ),
          SizedBox(height: 15),

          //this wrap is used to wrap the activities in card form
          Wrap(
            spacing: 5,
            children: <Widget>[
              ActivityCards.ActivityCard(
                context,
                'Karate',
                Image(image: AssetImage('lib/assets/images/fight.png')),
              ),
              ActivityCards.ActivityCard(
                context,
                'Yoga',
                Image(image: AssetImage('lib/assets/images/meditation.png')),
              ),
              ActivityCards.ActivityCard(
                context,
                'Drawing',
                Image(image: AssetImage('lib/assets/images/stationery.png')),
              ),
            ],
          ),

          //The footer is called here
          SizedBox(height: 8),
          Footer.FooterBar(context),
        ],
      ),
    );
  }
}
