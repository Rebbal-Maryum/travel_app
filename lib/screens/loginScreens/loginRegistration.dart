import 'package:flutter/material.dart';
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
              Text(AppStrings.signin,  style: h6Bold20Black.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),),
              SizedBox(
                height:25,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter e-mail address',
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
                    Image.asset(
                    ImageAssets.apple
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
                    Image.asset(
                        ImageAssets.facebook
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
