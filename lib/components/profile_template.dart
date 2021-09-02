import 'package:flutter/material.dart';
import 'package:motivriter/components/book_template.dart';
import 'package:motivriter/components/dock_template.dart';
import 'package:motivriter/components/settings_screen.dart';
import 'package:motivriter/components/stat_template.dart';
import '../colors.dart';
import 'chapter_template.dart';
import 'common_top_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProfileTemplate extends StatefulWidget {
  const ProfileTemplate({Key? key}) : super(key: key);

  @override
  _ProfileTemplateState createState() => _ProfileTemplateState();
}

class _ProfileTemplateState extends State<ProfileTemplate> {
  int streak = 10, points = 11, words = 12, progress = 40;
  final String profilePicture = 'Assets/profile.png';
  final String name = "Deepthi Dayanand",
      username = "deepschweep",
      doj = "August 2021";
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              CommonTopBar(screenHeight * 0.1),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 18.0),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 18.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {                      
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SettingsScreen()));
                    },
                    child: Icon(
                      Icons.settings,
                      color: white,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(name,
                        style: TextStyle(
                          fontSize: screenHeight * 0.035,
                          fontWeight: FontWeight.w600,
                        )),
                    Text(
                      username,
                      style: TextStyle(
                        fontSize: screenHeight * 0.02,
                        color: grey,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_alarm_rounded,
                            size: screenHeight * 0.025),
                        Text(
                          "Joined ${doj}",
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(children: [
                  Image.asset(profilePicture),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 0.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
                        child: CircleAvatar(
                          radius: screenHeight * 0.02,
                          backgroundColor: mainBlue,
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              size: screenHeight * 0.025,
                              color: black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ],
            ),
          ),
          Divider(
            height: 40.0,
            thickness: 1.0,
            color: black,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Your Progress",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: screenHeight * 0.03,
                    ),
                  ),
                  Text("  $progress%",
                      style: TextStyle(
                        fontSize: screenHeight * 0.025,
                      )
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: LinearPercentIndicator(
                animation: true,
                lineHeight: 20.0,
                animationDuration: 3000,
                percent: progress / 100,
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.blueAccent,
              ),
            ),
          ),
          Divider(
            height: 40.0,
            thickness: 1.0,
            color: black,
            indent: 20.0,
            endIndent: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 5.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Statistics",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenHeight * 0.03,
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Container(
              child: SingleChildScrollView(
                  child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: StatTemplate(
                      iconName: Icon(
                        Icons.whatshot,
                        size: screenHeight * 0.045,
                        color: mainBlue,),
                      statName: 'Day Streak',
                      value: 123,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChapterTemplate()));
                      },
                    ),
                  ),
                  Expanded(
                    child: StatTemplate(
                      iconName: Icon(
                        Icons.assistant_outlined,
                        size: screenHeight * 0.045,
                        color: mainBlue,
                        ),
                      statName: 'Total XP',
                      value: 3667,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChapterTemplate()));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.01),
              Row(
                children: [
                  StatTemplate(
                    iconName: Icon(
                      Icons.title,
                      size: screenHeight * 0.045,
                      color: mainBlue,
                      ),
                    statName: 'Word Count',
                    value: 2803,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChapterTemplate()));
                    },
                  ),
                  StatTemplate(
                    iconName: Icon(
                      Icons.alarm_outlined,
                      size: screenHeight * 0.045,
                      color: mainBlue,),
                    statName: 'Mins. Typed',
                    value: 36,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChapterTemplate()));
                    },
                  ),
                  
                ],
              ),
            ],
          ))),
          SizedBox(height: screenHeight * 0.05),
          DockTemplate(),
        ],

      ),
    ));
  }
}
