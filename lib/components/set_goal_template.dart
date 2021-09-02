import 'package:flutter/material.dart';
import 'package:motivriter/components/home_screen_template.dart';
import 'package:motivriter/components/profile_template.dart';
import '../colors.dart';

class SetGoalTemplate extends StatefulWidget {
  const SetGoalTemplate({Key? key}) : super(key: key);

  @override
  _SetGoalTemplateState createState() => _SetGoalTemplateState();
}

class _SetGoalTemplateState extends State<SetGoalTemplate> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: screenHeight,
        child: Column(
          children: <Widget>[
            Container(
              height: 0.6 * screenHeight,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('Assets/set_goal.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: screenHeight * 0.03),
            Text(
              "What's your daily word count goal?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: screenHeight * 0.033,
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                color: mainBlue,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.07,
                    screenHeight * 0.02, 0, screenHeight * 0.02),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter word count...",
                      hintStyle: TextStyle(
                        fontSize: screenHeight * 0.02,
                      )),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileTemplate()));
                },
                child: CircleAvatar(
                    radius: screenHeight * 0.04,
                    backgroundColor: Colors.black,
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward,
                        size: screenHeight * 0.045,
                        color: white,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
