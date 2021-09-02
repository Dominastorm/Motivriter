import 'package:flutter/material.dart';

import '../colors.dart';
import 'common_top_bar.dart';

class PageTemplate extends StatefulWidget {
  const PageTemplate({ Key? key }) : super(key: key);

  @override
  _PageTemplateState createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(children: [
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
                textAlign: TextAlign.center,
                  decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Color(
                    0xff7b828a,
                  ),
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                hintText: 'Title',
              )),
            ),            
            SizedBox(height: screenHeight * 0.04),
            Container(
              height: screenHeight * 0.7,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: lightBlue,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(screenWidth * 0.07,
                    screenHeight * 0.02, 0, screenHeight * 0.02),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Start writing...",
                      hintStyle: TextStyle(
                        fontSize: screenHeight * 0.02,
                      )),
                ),
              ),
            ),
            
        ],) 
        ),
      
    );
  }
}
