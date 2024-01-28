import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/screens/communicationScreens/friendsCommunication.dart';
import 'package:travel_app/screens/communicationScreens/socialSharing.dart';
import 'package:travel_app/screens/loginScreens/loginRegistration.dart';

import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../../config/strings.dart';
import '../../config/styles.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );

  bool isEmailValid = true;
  bool isPasswordMatch = true;

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }

  void verifyPasswordMatch() {
    setState(() {
      isPasswordMatch = passwordController.text == confirmPasswordController.text;
    });
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

              Text(AppStrings.signup,  style: h6Bold20Black.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),),
              SizedBox(
                height:25,
              ),
              Text(AppStrings.continuing,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),),
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
                  hintStyle: h5Light16Grey.copyWith(fontSize: 14,
                      color: AppColors.primaryColor),
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
                height:30,
              ),
              Text(AppStrings.continuing,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),),
              SizedBox(
                height:5,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                controller: passwordController,
                focusNode: passwordFocusNode,
                onChanged: (value) {
                  verifyPasswordMatch();
                },
                decoration: InputDecoration(
                  hintText: 'Create a password',
                  hintStyle: h5Light16Grey.copyWith(fontSize: 14,
                      color: AppColors.light),
                  prefixIcon: Container(
                    padding: EdgeInsets.only(left: 25),
                    child: SvgPicture.asset(SvgAssets.secure,),
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
                height:30,
              ),
              Text(AppStrings.continuing,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),),
              SizedBox(
                height:5,
              ),
              TextField(
                controller: confirmPasswordController,
                focusNode: confirmPasswordFocusNode,
                onChanged: (value) {
                  verifyPasswordMatch();
                },
                decoration: InputDecoration(
                  hintText: 'Repeat password',
                  hintStyle: h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),
                  prefixIcon: Container(
                    padding: EdgeInsets.only(left: 25),
                    child: SvgPicture.asset(SvgAssets.secure,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: AppColors.light,
                      width: 0.3,
                    ),
                  ),
                  errorText: isPasswordMatch ? null : 'Passwords do not match',
                  errorStyle: h5Light16Grey.copyWith(
                    fontSize: 14,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: AppColors.primaryColor,
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
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
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset(
                    ImageAssets.circular,
                  ),
                  SizedBox(width: 5,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.read),
                          style: h5Light16Grey.copyWith(color: AppColors.primaryColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: (AppStrings.terms),
                          style: h5Light16Grey.copyWith(color: AppColors.navigatorColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 190,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute
                  (builder: (c)=>SocialScreen()));
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
