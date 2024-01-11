import 'package:flutter/material.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/screens/boardingScreens/startScreen2.dart';

import '../../config/strings.dart';
import '../../config/styles.dart';
class StartScreenOne extends StatefulWidget {
  const StartScreenOne({super.key});

  @override
  State<StartScreenOne> createState() => _StartScreenOneState();
}

class _StartScreenOneState extends State<StartScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
children: [
  Image.asset(ImageAssets.img2,
  width: 406,
  height: 306,),
],
            ),
            SizedBox(height:30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(AppStrings.onboardHeadingOne, style: h1Bold24Black),
            ],
            ),
            SizedBox(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(AppStrings.onboardSubHeadingOne, style: h2Light18Grey),
              ],
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10,),
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>StartScreenTwo()));
                  }, child: Image.asset(ImageAssets.navigator),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                      backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
                    ),),
                ),
               // AppColors.navigatorColor
              ],
            ),
          ],
        ),
      ),
      ),
    );
  }
}
