import 'package:flutter/material.dart';
import 'package:travel_app/screens/boardingScreens/screens.dart';

import '../../config/colors.dart';
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
// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({super.key});
//
//   @override
//   State<OnBoardingScreen> createState() => _OnBoardingScreenState();
// }
//
// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   Screens screens = Screens();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: PageView(
//           controller: screens.controller,
//           children: screens.pages,
//         ),
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: InkWell(
//             onTap: () {
//               // Increment page index when button is pressed
//               screens.controller.nextPage(
//                 duration: Duration(milliseconds: 300),
//                 curve: Curves.easeInOut,
//               );
//             },
//             child: Container(
//               padding: EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: AppColors.navigatorColor,
//               ),
//               child: Icon(
//                 Icons.arrow_forward,
//                 color: Colors.white,
//                 size: 30,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
