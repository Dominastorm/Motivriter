import 'package:flutter/material.dart';

import '../colors.dart';

class BookTemplate extends StatefulWidget {
  final String imageName, bookName;
  final int wordCount;
  final Function onTap;
  const BookTemplate(
      {required this.imageName,
      required this.bookName,
      required this.wordCount,
      required this.onTap,});

  @override
  _BookTemplateState createState() => _BookTemplateState();
}

class _BookTemplateState extends State<BookTemplate> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
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
                    child: Image.asset(widget.imageName)),
                title: Text(widget.bookName,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle: Text("Words: ${widget.wordCount}"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
