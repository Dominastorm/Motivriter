import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class RowButtonIcon extends StatefulWidget {
  final String text;
  final Function onTap;
  const RowButtonIcon({required this.text, required this.onTap});

  @override
  _RowButtonIconState createState() => _RowButtonIconState();
}

class _RowButtonIconState extends State<RowButtonIcon> {
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => widget.onTap(),
      child: Container(
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(screenwidth * 0.1, 0, screenwidth * 0.1, 0),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, screenheight * 0.005, 0, 0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: screenheight * 0.033,
                      child: AutoSizeText(
                        widget.text,
                        presetFontSizes: [20, 18, 16, 14],
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Container(
                      height: screenheight * 0.04,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: screenheight * 0.02,
                        color: Colors.grey,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
