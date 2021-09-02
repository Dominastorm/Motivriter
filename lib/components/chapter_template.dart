import 'package:flutter/material.dart';
import '../colors.dart';

import 'common_top_bar.dart';

class ChapterTemplate extends StatefulWidget {
  const ChapterTemplate({Key? key}) : super(key: key);

  @override
  _ChapterTemplateState createState() => _ChapterTemplateState();
}

class _ChapterTemplateState extends State<ChapterTemplate> {
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Color(
                    0xff7b828a,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                hintText: 'Book Name',
                suffixIcon: Icon(
                  Icons.search,
                  color: black,
                ),
            )
            ),
          ),
          SizedBox(height: screenHeight*0.02),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: lightBlue,
                      ),
                      height: screenHeight*0.3,
                      width: screenWidth*0.45,
                      child: Text('hi'),
                      ),
                      SizedBox(height: screenHeight*0.02),
                      Container(
                      height: screenHeight*0.4,
                      width: screenWidth*0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: lightBlue,
                      ),
                      child: Text('hi'),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                      height: screenHeight*0.2,
                      width: screenWidth*0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: lightBlue,
                      ),
                      child: Text(
                        'hi'
                        ),
                      ),
                      SizedBox(height: screenHeight*0.02),
                      Container(
                      height: screenHeight*0.35,
                      width: screenWidth*0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: lightBlue,
                      ),
                      child: Text('Lorem ipsum dolor sit amet, consectetur'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 35.0,
          color: black,),
          backgroundColor: mainBlue,
        ),
    );
  }
}
