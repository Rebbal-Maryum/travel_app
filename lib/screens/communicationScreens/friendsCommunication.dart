import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/screens/communicationScreens/socialSharing.dart';
import 'package:travel_app/screens/loginScreens/Personal.dart';
import 'package:travel_app/screens/splashScreen/hawkey_travel_app.dart';

import '../../Config/Colors.dart';
import '../../Config/assets.dart';
class FriendsCommunication extends StatefulWidget {
  const FriendsCommunication({super.key});

  @override
  State<FriendsCommunication> createState() => _FriendsCommunicationState();
}

class _FriendsCommunicationState extends State<FriendsCommunication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.13,
          right: MediaQuery.of(context).size.width * 0.05,),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.partner,style: h6Bold20Black.copyWith
                (fontWeight: FontWeight.w600,
                  fontSize: 26),),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.04,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageAssets.p1),
                  SizedBox(
                    width: MediaQuery.of(context).size.width* 0.05,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.alan),
                          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,fontSize: 16),
                        ),
                        TextSpan(
                          text: (AppStrings.s1),
                          style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                              color: AppColors.secondaryColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  // Icon(Icons.arrow_forward_sharp,color: AppColors.secondaryColor.withOpacity(0.4),)
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>PersonalCenter()));
          }, child: Center(
            child: Text(AppStrings.edit,style:h4Bold26Black.copyWith(fontSize: 16,color:
            AppColors.whitecolor,fontWeight: FontWeight.w400),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,),
          ),
            style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                    horizontal: MediaQuery.of(context).size.width * 0.035,
                  ),
                ),
              backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
            )),
                ],
              ),
              Container(
                child: Divider(
                  indent: 10,
                  color: AppColors.searchColor,
                  height: 55,
                  thickness: 0.5,
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageAssets.p2),
                  SizedBox(
                    width: MediaQuery.of(context).size.width* 0.05,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.h2),
                          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,fontSize: 16),
                        ),
                        TextSpan(
                          text: (AppStrings.ss2),
                          style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                              color: AppColors.secondaryColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_sharp,
                      color: AppColors.secondaryColor.withOpacity(0.4),
                    ),
                  )

                ],
              ),
              Container(
                child: Divider(
                  indent: 10,
                  color: AppColors.searchColor,
                  height: 55,
                  thickness: 0.5,
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageAssets.p3),
                  SizedBox(
                    width: MediaQuery.of(context).size.width* 0.05,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.h3),
                          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,fontSize: 16),
                        ),
                        TextSpan(
                          text: (AppStrings.ss2),
                          style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                              color: AppColors.secondaryColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_sharp,
                      color: AppColors.secondaryColor.withOpacity(0.4),
                    ),
                  )

                ],
              ),
              Container(
                child: Divider(
                  indent: 10,
                  color: AppColors.searchColor,
                  height: 55,
                  thickness: 0.5,
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageAssets.p4),
                  SizedBox(
                    width: MediaQuery.of(context).size.width* 0.05,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.h4),
                          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,fontSize: 16),
                        ),
                        TextSpan(
                          text: (AppStrings.s4),
                          style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                              color: AppColors.secondaryColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_sharp,
                      color: AppColors.secondaryColor.withOpacity(0.4),
                    ),
                  )

                ],
              ),
              Container(
                child: Divider(
                  indent: 10,
                  color: AppColors.searchColor,
                  height: 55,
                  thickness: 0.5,
                ),
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(ImageAssets.p5),
                  SizedBox(
                    width: MediaQuery.of(context).size.width* 0.05,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.h5),
                          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,fontSize: 16),
                        ),
                        TextSpan(
                          text: (AppStrings.s5),
                          style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                              color: AppColors.secondaryColor.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_sharp,
                      color: AppColors.secondaryColor.withOpacity(0.4),
                    ),
                  ),

                ],
              ),
              Container(
                child: Divider(
                  indent: 10,
                  color: AppColors.searchColor,
                  height: 55,
                  thickness: 0.5,
                ),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 IconButton(onPressed:(){
                   Navigator.push(context, MaterialPageRoute(builder: (c)=>Hawkey_app()));
                 },  icon:  SvgPicture.asset(SvgAssets.logout)),
                 Text(AppStrings.logout,
                     style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,fontSize: 16,
                 color: AppColors.navigatorColor),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
