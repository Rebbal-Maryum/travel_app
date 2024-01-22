import 'package:flutter/material.dart';
import 'package:travel_app/screens/splashScreen/hawkey_travel_app.dart';
void main(){
  runApp(TravelApp());
}
class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hawkey_app(),
    );
  }
}
//change1git status
