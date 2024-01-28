import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/screens/communicationScreens/friendsCommunication.dart';
import 'package:travel_app/screens/loginScreens/Personal.dart';
import 'package:travel_app/screens/loginScreens/signUp.dart';

import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../../config/strings.dart';
import '../../config/styles.dart';
class LoginRegScreen extends StatefulWidget {
  const LoginRegScreen({super.key});

  @override
  State<LoginRegScreen> createState() => _LoginRegScreenState();
}

class _LoginRegScreenState extends State<LoginRegScreen> {
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

              Text(AppStrings.signin,  style: h6Bold20Black.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),),
              SizedBox(
                height:25,
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

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Divider(
                        endIndent: 10,
                        color: AppColors.light,
                        height: 100,
                        thickness: 0.5,
                      ),
                    ),
                  ),
                  Text(AppStrings.continuing,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.primaryColor
                  , fontWeight: FontWeight.w500) ,),
                  Expanded(
                    child: Container(
                      child: Divider(
                        indent: 10,
                        color: AppColors.light,
                        height: 100,
                        thickness: 0.5,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
                  ),
                  backgroundColor: MaterialStateProperty.all(AppColors.primaryColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 Container(
                      padding: EdgeInsets.only(left: 25),
                      child: SvgPicture.asset(SvgAssets.mac,),
                    ),
                    SizedBox(width: 8),
                    Text(
                      AppStrings.apple,
                      style: h4Bold26Black.copyWith(
                        fontSize: 16,
                        color: AppColors.whitecolor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
                  ),
                  backgroundColor: MaterialStateProperty.all(AppColors.facebook),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 25),
                      child: SvgPicture.asset(SvgAssets.negative,),
                    ),
                    SizedBox(width: 8),
                    Text(
                      AppStrings.facebook,
                      style: h4Bold26Black.copyWith(
                        fontSize: 16,
                        color: AppColors.whitecolor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 230,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (c)=>SignUp()));
              }, child: Center(
                child: Text(AppStrings.cont,style:h4Bold26Black.copyWith(fontSize: 16,color:
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
