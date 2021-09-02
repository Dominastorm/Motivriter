import 'package:flutter/material.dart';
import 'package:motivriter/components/build_dot.dart';
import 'package:motivriter/components/set_goal_template.dart';

import '../colors.dart';

class WelcomeTemplate extends StatelessWidget {
  final String imageName, title, text;
  final int currentIndex;
  const WelcomeTemplate({required this.imageName,required this.title,required this.text, required this.currentIndex});


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 0.75 * screenHeight,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageName),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: screenHeight*0.05),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: currentIndex == 0 ? screenHeight*0.06 : screenHeight*0.04,
              ),
            ),
            SizedBox(height: screenHeight*0.02),
            Text(
                text,
                style: TextStyle(
                  color: Colors.grey[700],
                  // fontWeight: FontWeight.,
                  fontSize: screenHeight*0.02,
              ),
            ),
            SizedBox(height: screenHeight*0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth*0.4),
              child: Row(
                children: <Widget>[
                  BuildDot(index: 0, currentIndex: currentIndex),
                  BuildDot(index: 1, currentIndex: currentIndex),
                  BuildDot(index: 2, currentIndex: currentIndex),
                  BuildDot(index: 3, currentIndex: currentIndex),
                ],
              ),
            )
          ],
        ),
    );
  }
}

class LoginTemplate extends StatelessWidget {
  final int currentIndex;
  const LoginTemplate({required this.currentIndex});


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    double screenWidth = MediaQuery
        .of(context)
        .size
        .width;

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 0.6 * screenHeight,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('Assets/login_one.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          SizedBox(height: screenHeight*0.05),
          Text(
            "Welcome to",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: screenHeight*0.03,
            ),
          ),
          SizedBox(height: screenHeight*0.01),
          Text(
            "Motivriter",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: screenHeight*0.05,
            ),
          ),

          SizedBox(height: screenHeight*0.02),
          Text(
            "Set yourself up for improving your writing experience",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: screenHeight*0.02
            ),
          ),
          SizedBox(height: screenHeight*0.04),
          ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(mainBlue),
                    fixedSize: MaterialStateProperty.all<Size>(Size(screenWidth*0.6, screenHeight*0.07)),
            ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SetGoalTemplate())
                );
              },
              icon: Icon(
                Icons.login,
              ),
              label: Text(
                  "Sign-in with Google",
              style: TextStyle(
                color: Colors.black,
              ),
          ),
          ),
          SizedBox(height: screenHeight*0.04),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth*0.4),
            child: Row(
              children: <Widget>[
                BuildDot(index: 0, currentIndex: currentIndex),
                BuildDot(index: 1, currentIndex: currentIndex),
                BuildDot(index: 2, currentIndex: currentIndex),
                BuildDot(index: 3, currentIndex: currentIndex),
              ],
            ),
          )
        ],
      ),
    );
  }
}
