import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/screens/communicationScreens/friendsCommunication.dart';
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
  TextEditingController emailController = TextEditingController();
  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  bool isEmailValid = true;
  FocusNode emailFocusNode = FocusNode();
  @override
  void dispose() {
    emailController.dispose();
    emailFocusNode.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          elevation: 0, // Remove the shadow
          title: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.001,
              top: MediaQuery.of(context).size.height * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back,color: AppColors.primaryColor,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
     body: Padding(
       padding: EdgeInsets.only(left: 20,top: 5, right: 20),
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
         child: Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     mainAxisAlignment: MainAxisAlignment.start,
     children: [
       Row(
         // crossAxisAlignment: CrossAxisA,lignment.start
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Text(AppStrings.alan,  style: h6Bold20Black.copyWith(
             fontWeight: FontWeight.w700,
             fontSize: 22,
           ),),
           // SizedBox(width: MediaQuery.of(context).size.width * 0.4,),
           Spacer(),
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
         controller: emailController,
         focusNode: emailFocusNode,
         onChanged: (value) {
           setState(() {
             isEmailValid = emailRegex.hasMatch(value);
           });
         },
         decoration: InputDecoration(
           hintText: 'Enter e-mail address',
           hintStyle: h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),
           prefixIcon: Container(
             padding: EdgeInsets.only(left: 25),
             child: SvgPicture.asset(SvgAssets.email,),
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
           errorBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(100),
             borderSide: BorderSide(
               color: AppColors.primaryColor,
               width: 0.5,
             ),
           ),
           focusedErrorBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(100),
             borderSide: BorderSide(
               color: AppColors.primaryColor, // Customize this color
               width: 0.5,
             ),
           ),
           contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
           errorText: isEmailValid ? null : 'Enter a valid email',
           errorStyle: h5Light16Grey.copyWith(
             fontSize: 14,
             color: AppColors.primaryColor,
             fontWeight: FontWeight.w500,
           ),
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
                 padding: EdgeInsets.only(left: 25),
                 child: SvgPicture.asset(SvgAssets.secure,),
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
               padding: EdgeInsets.only(left: 25),
               child: SvgPicture.asset(SvgAssets.persona,),
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
         Navigator.push(context, MaterialPageRoute
           (builder: (c)=>LoginRegScreen()));
       }, child: Center(
         child: Text(AppStrings.save,style:h4Bold26Black.copyWith(fontSize: 16,color:
         AppColors.whitecolor,fontWeight: FontWeight.w500,
         ),
           maxLines: 1,
           overflow: TextOverflow.ellipsis,),
       ),
         style: ButtonStyle(
           padding: MaterialStateProperty.all(
             EdgeInsets.symmetric(
               vertical: MediaQuery.of(context).size.height * 0.017,
               // horizontal: MediaQuery.of(context).size.width * 0.24,
             ),
           ),
           backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
         ),),


     ],
         ),
       ),


     ),
    );
  }
}
