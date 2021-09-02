import 'package:flutter/material.dart';
import 'package:motivriter/components/page_template.dart';
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
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                CommonTopBar(screenHeight * 0.1),
                // ChangePasswordBackground(),
                Positioned(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: screenHeight * 0.04,
                    ),
                  ),
                ),
                Positioned(
                  top: screenHeight * 0.02,
                  left: screenWidth * 0.18,
                  child: Container(
                    height: screenHeight * 0.045,
                    child: Text(
                      "",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
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
              )),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PageTemplate()),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: lightBlue,
                            ),
                            height: screenHeight * 0.3,
                            width: screenWidth * 0.45,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text('Chapter 1',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25.0)),
                                Text('12 August 2021',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15.0)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          height: screenHeight * 0.4,
                          width: screenWidth * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: lightBlue,
                          ),
                          child: Text(''),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          height: screenHeight * 0.2,
                          width: screenWidth * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: lightBlue,
                          ),
                          child: Text(''),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Container(
                          height: screenHeight * 0.35,
                          width: screenWidth * 0.45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: lightBlue,
                          ),
                          child: Text(''),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 35.0,
          color: black,
        ),
        backgroundColor: mainBlue,
      ),
    );
  }
}
