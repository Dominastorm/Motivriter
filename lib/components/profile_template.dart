import 'package:flutter/material.dart';
import 'package:motivriter/components/book_template.dart';
import '../colors.dart';
import 'chapter_template.dart';
import 'common_top_bar.dart';

class ProfileTemplate extends StatefulWidget {
  const ProfileTemplate({Key? key}) : super(key: key);

  @override
  _ProfileTemplateState createState() => _ProfileTemplateState();
}

class _ProfileTemplateState extends State<ProfileTemplate> {
  int streak = 10, points = 11, words = 12;
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
                    child: Icon(
                      Icons.settings,
                      color: white,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: screenHeight * 0.05),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(name,
                        style: TextStyle(
                          fontSize: screenHeight * 0.03,
                          fontWeight: FontWeight.bold,
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
                        Icon(
                          Icons.access_alarm_rounded,
                          size: screenHeight*0.025),
                        Text(
                          "Joined ${doj}",
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
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
                    
                  ]
                ),
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
                      fontWeight: FontWeight.w600,
                      fontSize: screenHeight * 0.03,
                    ),
                  ),
                  Text(
                    "  40%"
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          BookTemplate(
            imageName: 'Assets/login_one.png',
            bookName: 'Book 1',
            wordCount: 1234,
            onTap: () {
              print('hi');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChapterTemplate()));
            },
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
              child: Text(
                "All Notebooks",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
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
              BookTemplate(
                imageName: 'Assets/welcome_three.png',
                bookName: 'Book 2',
                wordCount: 3914,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChapterTemplate()));
                },
              ),
              SizedBox(height: screenHeight * 0.015),
              BookTemplate(
                imageName: 'Assets/welcome_one.png',
                bookName: 'Book 3',
                wordCount: 17824,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChapterTemplate()));
                },
              ),
              SizedBox(height: screenHeight * 0.015),
              BookTemplate(
                imageName: 'Assets/welcome_two.png',
                bookName: 'Book 4',
                wordCount: 1892,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChapterTemplate()));
                },
              ),
            ],
          )))
        ],
      ),
    ));
  }
}
