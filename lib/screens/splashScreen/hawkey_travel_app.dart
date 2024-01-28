import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/screens/boardingScreens/boardingScreen.dart';
import 'package:travel_app/screens/introductionScreen/frontScreen.dart';
import 'package:travel_app/screens/boardingScreens/startScreen1.dart';

import '../../config/strings.dart';
import '../../models/model2_onBoarding.dart';
import '../boardingScreens/onBoardingScreen.dart';
class Hawkey_app extends StatefulWidget {
  const Hawkey_app({super.key});

  @override
  State<Hawkey_app> createState() => _Hawkey_appState();
}

class _Hawkey_appState extends State<Hawkey_app> {
  List<OnboardingItem> onboardingDataList = [
    OnboardingItem(
      heading: AppStrings.onboardHeadingOne,
      subheading: AppStrings.onboardSubHeadingOne,
      imagePath: ImageAssets.img2,
    ),
    OnboardingItem(
      heading: AppStrings.onboardHeadingTwo,
      subheading: AppStrings.onboardSubHeadingTwo,
      imagePath: ImageAssets.img3,
    ),
    OnboardingItem(
      heading: AppStrings.onboardHeadingThree,
      subheading: AppStrings.onboardSubHeadingThree,
      imagePath: ImageAssets.img4,
    ),
  ];

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:2), ()=>
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreen(
              onboardingData: onboardingDataList,
            ),
          ),
              (Route<dynamic> route) => false,
        ),


    );}
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.bottomColor,AppColors.upperColor],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
              )
          ),
          child:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.img1,
                  width: 147,
                  height: 147,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

