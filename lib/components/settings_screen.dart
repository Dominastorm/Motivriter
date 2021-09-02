import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motivriter/components/row_button_icon.dart';

import '../colors.dart';
import 'common_top_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String name = 'Deepthi Dayanand';
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: Container(
      child: Column(
        children: [
          Container(
            color: lightBlue,
            height: screenheight * 0.1,
            child: Stack(
              children: [
                CommonTopBar(screenheight * 0.1),
                // ChangePasswordBackground(),
                Positioned(
                  top: screenheight * 0.02,
                  left: screenwidth * 0.05,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: screenheight * 0.04,
                    ),
                  ),
                ),
                Positioned(
                  top: screenheight * 0.02,
                  left: screenwidth * 0.18,
                  child: Container(
                    height: screenheight * 0.045,
                    child: AutoSizeText(
                      "Settings",
                      presetFontSizes: [30, 24, 20, 18, 16],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: screenheight * 0.2,
              width: screenwidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: lightBlue,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: screenheight * 0.04,
                    left: screenwidth * 0.1,
                    child: CircleAvatar(
                      radius: screenheight * 0.06,
                      backgroundImage: AssetImage('Assets/profile.png'),
                    ),
                  ),
                  Positioned(
                    top: screenheight * 0.04 + screenheight * 0.02,
                    left: screenwidth * 0.12 + screenheight * 0.12,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenheight * 0.04,
                            child: AutoSizeText("Hello",
                                presetFontSizes: [18, 16, 14, 12],
                                style: TextStyle(
                                  color: grey,
                                )),
                          ),
                          Container(
                            height: screenheight * 0.05,
                            child: AutoSizeText(name,
                                presetFontSizes: [20, 18, 16, 12],
                                style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.w500,
                                )),
                          )
                        ]),
                  )
                ],
              )),
          Container(
              height: screenheight * 0.45,
              child: Column(
                children: [
                  SizedBox(height: screenheight * 0.04),
                  RowButtonIcon(
                    text: "FAQs",
                    onTap: () {},
                  ),
                  SizedBox(height: screenheight * 0.01),
                  RowButtonIcon(text: "Share with friends", onTap: () {}),
                  SizedBox(height: screenheight * 0.01),
                  RowButtonIcon(text: "Rate us", onTap: () {}),
                  SizedBox(height: screenheight * 0.01),
                  RowButtonIcon(text: "About", onTap: () {}),
                  SizedBox(height: screenheight * 0.01),
                  RowButtonIcon(text: "Contact", onTap: () {}),
                ],
              )),
          Center(
              child: TextButton(
                  onPressed: () {},
                  child: AutoSizeText(
                    "Change Password",
                    presetFontSizes: [18, 16, 12, 10],
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ))),
          SizedBox(height: screenheight * 0.02),
          Center(
              child: SizedBox(
            height: screenheight * 0.06,
            width: screenwidth * 0.6,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF2F2F2F)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  size: screenheight * 0.02,
                ),
                label: AutoSizeText(
                  "Logout",
                  presetFontSizes: [18, 16, 12, 10],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ))
        ],
      ),
    )));
  }
}
