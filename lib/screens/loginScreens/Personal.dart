import 'package:flutter/material.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/screens/loginScreens/loginRegistration.dart';

import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../../config/styles.dart';
class PersonalCenter extends StatefulWidget {
  const PersonalCenter({super.key});

  @override
  State<PersonalCenter> createState() => _PersonalCenterState();
}

class _PersonalCenterState extends State<PersonalCenter> {
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
 body: Padding(
   padding: EdgeInsets.only(left: 20,top: 80, right: 20),
   child: SingleChildScrollView(
     scrollDirection: Axis.vertical,
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         IconButton(
           icon: Icon(Icons.arrow_back,color: AppColors.primaryColor,),
           onPressed: () {
             Navigator.pop(context);
           },
         ),
         SizedBox(
           height: 15,
         ),
         Row(
           // crossAxisAlignment: CrossAxisA,lignment.start
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Text(AppStrings.alan,  style: h6Bold20Black.copyWith(
               fontWeight: FontWeight.w700,
               fontSize: 22,
             ),),
             SizedBox(width: 185), // Adjust the spacing between text and image
             Image.asset(
               ImageAssets.circle1,
             ),

           ],
         ),
         SizedBox(
           height:20,
         ),
         Text(AppStrings.email,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),),
         SizedBox(
           height:5,
         ),
         TextField(
           decoration: InputDecoration(
             hintText: 'Enter your email',
             hintStyle: h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),
             prefixIcon: Container(
               padding: EdgeInsets.only(left: 20),
               child: Image.asset(ImageAssets.email),
             ),
             enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(100),
               borderSide: BorderSide(
                 color: AppColors.light,
                 width: 0.3,
               ),
             ),
             focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(100),
               borderSide: BorderSide(
                 color: AppColors.primaryColor,
                 width: 0.5,
               ),
             ),
             contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
           ),
         ),

         SizedBox(
           height:25,
         ),
         Text(AppStrings.pass,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),),
         SizedBox(
           height:5,
         ),
         Stack(
           alignment: Alignment.centerRight,
           children: [
             TextField(
               obscureText: true,
               obscuringCharacter: '*',
               controller: _passwordController,
               decoration: InputDecoration(
                 hintText: 'Enter your password',
                 hintStyle: h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),
                 prefixIcon: Container(
                   padding: EdgeInsets.only(left: 20),
                   child:  Image.asset(ImageAssets.pasword), // Replace with your password image
                 ),
                 enabledBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(100),
                   borderSide: BorderSide(
                     color: Colors.grey,
                     width: 0.3,
                   ),
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(100),
                   borderSide: BorderSide(
                     color: AppColors.primaryColor,
                     width: 0.5,
                   ),
                 ),
                 contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
               ),
             ),
             Positioned(
               right: 10,
               child:  ElevatedButton(onPressed: (){
                 _passwordController.clear();
               }, child: Text(AppStrings.change,style:h4Bold26Black.copyWith(fontSize: 16,color:
               AppColors.whitecolor,fontWeight: FontWeight.w500)),
                 style: ButtonStyle(
                   padding: MaterialStateProperty.all(EdgeInsets.only(top: 8,bottom: 8,
                       left: 18,right: 18)),
                   backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
                 ),),
             ),
           ],
         ),

         SizedBox(
           height:25,
         ),
         Text(AppStrings.auth,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),),
         SizedBox(
           height:5,
         ),
         TextField(
           decoration: InputDecoration(
             hintText: 'Authentication',
             hintStyle: h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),
             prefixIcon: Container(
               padding: EdgeInsets.only(left: 20),
               child: Image.asset(ImageAssets.person),
             ),
             enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(100),
               borderSide: BorderSide(
                 color: AppColors.light,
                 width: 0.3,
               ),
             ),
             focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(100),
               borderSide: BorderSide(
                 color: AppColors.primaryColor,
                 width: 0.5,
               ),
             ),
             contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
           ),
         ),
         SizedBox(
           height: 230,
         ),
         ElevatedButton(onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (c)=>LoginRegScreen()));
         }, child: Text(AppStrings.save,style:h4Bold26Black.copyWith(fontSize: 16,color:
         AppColors.whitecolor,fontWeight: FontWeight.w500)),
           style: ButtonStyle(
             padding: MaterialStateProperty.all(EdgeInsets.only(top: 15,bottom: 15,
                 left: 110,right: 110)),
             backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
           ),),


       ],
     ),
   ),
   

 ),
      ),
    );
  }
}
