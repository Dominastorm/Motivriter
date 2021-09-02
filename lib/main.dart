import 'package:flutter/material.dart';
import 'package:motivriter/components/welcome_template.dart';

void main() => runApp(MaterialApp(
    home: MyApp()
));


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}
PageController pageController = PageController(initialPage: 0);


class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          pageSnapping: true,
          controller: pageController,
          onPageChanged: (index){
            setState(() {
              currentIndex = index;
            });
          },
          children: [
            WelcomeTemplate(currentIndex: currentIndex,
                imageName: "Assets/welcome_one.png",
                title: "Welcome!",
                text: "What are you writing today?",),
            WelcomeTemplate(currentIndex: currentIndex,
                imageName: "Assets/welcome_two.png",
                title: "Solidify your writing habit",
                text: "Journaling, writing, stream of consciousness",),
            WelcomeTemplate(currentIndex: currentIndex,
                imageName: "Assets/welcome_three.png",
                title: "Track your daily progress",
                text: "Track your everyday word count and time spent writing",),
            LoginTemplate(currentIndex: currentIndex,),
          ],
        ),
    );
  }
}



