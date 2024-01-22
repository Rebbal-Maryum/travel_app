import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                decoration: InputDecoration(
                  hintText: 'Enter e-mail address',
                  hintStyle: h5Light16Grey.copyWith(fontSize: 14,
                      color: AppColors.primaryColor),
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
                height:30,
              ),
              Text(AppStrings.continuing,style:h5Light16Grey.copyWith(fontSize: 14, color: AppColors.light),),
              SizedBox(
                height:5,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  hintText: 'Create a password',
                  hintStyle: h5Light16Grey.copyWith(fontSize: 14,
                      color: AppColors.light),
                  prefixIcon: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Image.asset(ImageAssets.pasword),
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
                decoration: InputDecoration(
                  hintText: 'Repeat password',
                  hintStyle: h5Light16Grey.copyWith(fontSize: 14,
                      color: AppColors.light),
                  prefixIcon: Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Image.asset(ImageAssets.pasword),
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
                Navigator.push(context, MaterialPageRoute(builder: (c)=>SignUp()));
              }, child: Text(AppStrings.cont,style:h4Bold26Black.copyWith(fontSize: 16,color:
              AppColors.whitecolor,fontWeight: FontWeight.w500)),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 15,bottom: 15,
                      left: 133,right: 133)),
                  backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
