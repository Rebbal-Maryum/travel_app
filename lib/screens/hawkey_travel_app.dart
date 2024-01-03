import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/screens/loginScreen.dart';
import 'package:travel_app/screens/startScreen1.dart';
class Hawkey_app extends StatefulWidget {
  const Hawkey_app({super.key});

  @override
  State<Hawkey_app> createState() => _Hawkey_appState();
}

class _Hawkey_appState extends State<Hawkey_app> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds:2), ()=>
        Navigator.push(context, MaterialPageRoute(builder:(context)=>StartScreenOne())),);}
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

