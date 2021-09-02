import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motivriter/components/profile_template.dart';

import '../colors.dart';
import 'home_screen_template.dart';

class DockTemplate extends StatefulWidget {
  const DockTemplate({Key? key}) : super(key: key);

  @override
  _DockTemplateState createState() => _DockTemplateState();
}

class _DockTemplateState extends State<DockTemplate> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
          decoration: BoxDecoration(
             gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: <Color>[
          Color(
            0xff5a9ed1,
          ),
          Color(
            0xff6CC3C6,
          ),
        ],// red to yellow repeats the gradient over the canvas
        ),
            borderRadius: BorderRadius.circular(40.0),
          ),
          height: screenHeight * 0.08,
          width: screenWidth * 0.6,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreenTemplate()),
                    );
                  },
                  child: Icon(
                    Icons.home_outlined,
                    size: 35.0,
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileTemplate()),
                    );
                  },
                  child: Icon(
                    Icons.book,
                    size: 30.0,
                  )),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileTemplate()),
                    );
                  },
                  child: Icon(
                    Icons.people,
                    size: 35.0,
                  ))
            ],
          )),
    );
  }
}
