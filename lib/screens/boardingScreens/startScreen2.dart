// import 'package:flutter/material.dart';
// import 'package:travel_app/config/assets.dart';
// import 'package:travel_app/config/colors.dart';
// import 'package:travel_app/screens/boardingScreens/startScreen3.dart';
//
// import '../../config/strings.dart';
// import '../../config/styles.dart';
// class StartScreenTwo extends StatefulWidget {
//   const StartScreenTwo({super.key});
//
//   @override
//   State<StartScreenTwo> createState() => _StartScreenTwoState();
// }
//
// class _StartScreenTwoState extends State<StartScreenTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset(ImageAssets.img3,
//                     width: 328,
//                     height: 325,),
//                 ],
//               ),
//               SizedBox(height:30),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(AppStrings.onboardHeadingTwo, style: h1Bold24Black),
//                 ],
//               ),
//               SizedBox(height:15),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(AppStrings.onboardSubHeadingTwo, style: h2Light18Grey),
//                 ],
//               ),
//               SizedBox(height: 30),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   ElevatedButton(onPressed: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (c)=>StartScreenThree()));
//                   }, child: Image.asset(ImageAssets.navigator),
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(CircleBorder()),
//                       padding: MaterialStateProperty.all(EdgeInsets.all(20)),
//                       backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
//                     ),),
//                   // AppColors.navigatorColor
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
