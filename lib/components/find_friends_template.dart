import 'package:flutter/material.dart';
import 'package:motivriter/components/book_template.dart';
import '../colors.dart';
import 'chapter_template.dart';
import 'common_top_bar.dart';

class FindFriendsTemplate extends StatefulWidget {
  const FindFriendsTemplate({Key? key}) : super(key: key);

  @override
  _FindFriendsTemplateState createState() => _FindFriendsTemplateState();
}

class _FindFriendsTemplateState extends State<FindFriendsTemplate> {
  int streak = 10, points = 11, words = 12;
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
              child: Text(
                "Find Friends",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
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
        SizedBox(height: screenHeight * 0.02),
        Padding(
          padding: const EdgeInsets.all(0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: mainBlue,
                        size: screenHeight * 0.07,
                      ),
                    ],
                  ),
                  Text("Search")
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.local_post_office_rounded,
                        color: mainBlue,
                        size: screenHeight * 0.07,
                      ),
                    ],
                  ),
                  Text("Invite")
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
        SizedBox(height: screenHeight * 0.0005),
        Container(
          height: screenHeight * 0.07,
          width: screenWidth * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            color: lightBlue,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter name or username",
                  hintStyle: TextStyle(
                    fontSize: screenHeight * 0.02,
                  )),
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.1),
        Center(child: Image.asset("Assets/friends_search.png")),
        SizedBox(height: screenHeight * 0.05),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Expanded(
              child: Text(
                "     Everything's better with\ncompany; share and connect\n over writing and journaling.\n     The more the merrier!",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: screenHeight * 0.025,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        )
      ],
    )));
  }
}
