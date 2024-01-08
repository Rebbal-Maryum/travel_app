import 'package:flutter/material.dart';
import 'package:travel_app/screens/boardingScreens/screens.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  Screens screens = Screens();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          children: screens.pages,
        ),
      ),
    );
  }
}


