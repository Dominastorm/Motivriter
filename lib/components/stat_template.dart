import 'package:flutter/material.dart';

import '../colors.dart';

class StatTemplate extends StatefulWidget {
  final String iconName, statName;
  final int value;
  final Function onTap;
  const StatTemplate(
      {required this.iconName,
      required this.statName,
      required this.value,
      required this.onTap,});

  @override
  _StatTemplateState createState() => _StatTemplateState();
}

class _StatTemplateState extends State<StatTemplate> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        width: screenWidth*0.4,
        height: screenHeight * 0.12,
        child: InkWell(
          onTap: () => widget.onTap(),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
            color: lightBlue,
            child: Center(
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(widget.iconName)),
                title: Text(
                  "${widget.value}",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("${widget.statName}"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
