import 'package:flutter/material.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Padding(
         padding: EdgeInsets.only(top: 60, left: 20),
          child: Column(
           children: [
             Text(AppStrings.frontheading1, style: h3Light16Grey),
             Text(AppStrings.frontheading2, style: h4Bold26Black),
              SizedBox(
                height: 20,
              ),


           ],
          ),

        )
      ),
    );
  }
}


