// import 'package:flutter/material.dart';
// import 'package:travel_app/components/bottomNavigation.dart';
// import 'package:travel_app/config/assets.dart';
// import 'package:travel_app/config/colors.dart';
// import 'package:travel_app/screens/introductionScreen/frontScreen.dart';
//
// import '../../config/strings.dart';
// import '../../config/styles.dart';
// class StartScreenThree extends StatefulWidget {
//   const StartScreenThree({super.key});
//
//   @override
//   State<StartScreenThree> createState() => _StartScreenThreeState();
// }
//
// class _StartScreenThreeState extends State<StartScreenThree> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Image.asset(ImageAssets.img4,
//                       width: 406,
//                       height: 306,),
//                   ],
//                 ),
//                 SizedBox(height:30),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(AppStrings.onboardHeadingThree, style: h1Bold24Black),
//                   ],
//                 ),
//                 SizedBox(height:15),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(AppStrings.onboardSubHeadingThree, style: h2Light18Grey),
//                   ],
//                 ),
//                 SizedBox(height: 47),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     ElevatedButton(onPressed: (){
//                       Navigator.push(context, MaterialPageRoute(builder: (c)=>BottomBar()));
//                     }, child: Image.asset(ImageAssets.navigator),
//                       style: ButtonStyle(
//                         shape: MaterialStateProperty.all(CircleBorder()),
//                         padding: MaterialStateProperty.all(EdgeInsets.all(20)),
//                         backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
//                       ),),
//                     // AppColors.navigatorColor
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
