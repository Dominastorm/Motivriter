import 'package:flutter/material.dart';
import 'package:motivriter/components/book_template.dart';
import 'package:motivriter/components/dock_template.dart';
import '../colors.dart';
import 'chapter_template.dart';
import 'common_top_bar.dart';

class HomeScreenTemplate extends StatefulWidget {
  const HomeScreenTemplate({Key? key}) : super(key: key);

  @override
  _HomeScreenTemplateState createState() => _HomeScreenTemplateState();
}

class _HomeScreenTemplateState extends State<HomeScreenTemplate> {
  int streak = 120, points = 231, words = 34567;
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
                  "Home",
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
                    Row(
                      children: [
                        Icon(
                          Icons.whatshot,
                          color: mainBlue,
                          size: screenHeight * 0.04,
                        ),
                        Text(
                          '$streak',
                          style: TextStyle(color: mainBlue, fontSize: 20),
                        ),
                      ],
                    ),
                    Text("Streak")
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.assistant_outlined,
                          color: mainBlue,
                          size: screenHeight * 0.04,
                        ),
                        Text(
                          '$points',
                          style: TextStyle(color: mainBlue, fontSize: 20),
                        ),
                      ],
                    ),
                    Text("Points")
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.title_sharp,
                          color: mainBlue,
                          size: screenHeight * 0.04,
                        ),
                        Text(
                          '$words',
                          style: TextStyle(color: mainBlue, fontSize: 20),
                        ),
                      ],
                    ),
                    Text("Words")
                  ],
                )
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
              child: Text(
                "Recent",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: screenHeight * 0.03,
                ),
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
            height: screenHeight*0.3,
              child: SingleChildScrollView(
                  child: Column(
            children: [
              BookTemplate(
                imageName: 'Assets/welcome_three.png',
                bookName: 'Book 2',
                wordCount: 3914,
                onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChapterTemplate()));
            },
              ),
              SizedBox(height: screenHeight * 0.015),
              BookTemplate(
                imageName: 'Assets/welcome_two.png',
                bookName: 'Book 3',
                wordCount: 17824,
                onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChapterTemplate()));
            },
              ),
              SizedBox(height: screenHeight * 0.015),
              BookTemplate(
                imageName: 'Assets/login_one.png',
                bookName: 'Book 4',
                wordCount: 1892,
                onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChapterTemplate()));
            },
              ),
            ],
          ))),
          DockTemplate(),
        ],
      ),
    ));
  }
}
