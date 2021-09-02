import 'package:flutter/material.dart';

import '../colors.dart';


class BuildDot extends StatefulWidget {
  final int index, currentIndex;
  const BuildDot({required this.index, required this.currentIndex});

  @override
  _BuildDotState createState() => _BuildDotState();
}

class _BuildDotState extends State<BuildDot> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery
        .of(context)
        .size
        .height;
      return Container(
        height: 10,
        width: widget.currentIndex == widget.index ? 25 : 10,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenHeight/10.0),
          color: widget.currentIndex == widget.index ? mainBlue : mainBlue.withOpacity(
              0.5),
        )
      );
  }
}
