import 'package:flutter/material.dart';
import 'package:travel_app/screens/splashScreen/hawkey_travel_app.dart';
import 'package:responsive_builder/responsive_builder.dart';
void main(){
  // ResponsiveSizingConfig.instance.setCustomBreakpoints(
  //   ScreenBreakpoints(desktop: 300, tablet: 300,watch: 50),
  // );
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
