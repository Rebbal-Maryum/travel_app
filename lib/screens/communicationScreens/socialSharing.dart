import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/Config/Colors.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';

import '../../Config/assets.dart';
class SocialScreen extends StatefulWidget {
  const SocialScreen({super.key});

  @override
  State<SocialScreen> createState() => _SocialScreenState();
}

class _SocialScreenState extends State<SocialScreen> {
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
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05,
          top: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.width * 0.05,),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset(SvgAssets.people)),
                  Text(AppStrings.links,style: h6Bold20Black.copyWith(fontSize: 26,
                  fontWeight: FontWeight.w600),)
                ],
              ),
              Text(AppStrings.post,style: h5Light16Grey.copyWith(
                color: AppColors.light.withOpacity(0.9),
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.03,),
              Card(
                color:AppColors.another,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  height:MediaQuery.of(context).size.height* 0.13 ,
                  width:MediaQuery.of(context).size.width* 0.85,
                  // padding: EdgeInsets.only(
                  //   top:  MediaQuery.of(context).size.height* 0.0001,
                  //   // left:  MediaQuery.of(context).size.width* 0.015,
                  //   // right:  MediaQuery.of(context).size.width* 0.015
                  // ),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: MediaQuery.of(context).size.height * 0.15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.light.withOpacity(0.3),
                        ),
                        child:  Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.03,
                              vertical: MediaQuery.of(context).size.height * 0.03,),
                          child: SvgPicture.asset(SvgAssets.face,),
                        )
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width* 0.03,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: (AppStrings.face),
                              style: h6Bold20Black.copyWith(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: (AppStrings.ot),
                              style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                                  color: AppColors.secondaryColor.withOpacity(0.6),
                              fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.02,),
              Card(
                color:AppColors.another,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  height:MediaQuery.of(context).size.height* 0.13 ,
                  width:MediaQuery.of(context).size.width* 0.85,
                  // padding: EdgeInsets.only(
                  //   top:  MediaQuery.of(context).size.height* 0.0001,
                  //   // left:  MediaQuery.of(context).size.width* 0.015,
                  //   // right:  MediaQuery.of(context).size.width* 0.015
                  // ),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.light.withOpacity(0.3),
                          ),
                          child:  Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.03,
                              vertical: MediaQuery.of(context).size.height * 0.03,),
                            child: SvgPicture.asset(SvgAssets.twitter,),
                          )
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width* 0.03,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: (AppStrings.twitter),
                              style: h6Bold20Black.copyWith(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: (AppStrings.ot),
                              style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                                  color: AppColors.secondaryColor.withOpacity(0.6),
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.02,),
              Card(
                color:AppColors.another,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  height:MediaQuery.of(context).size.height* 0.13 ,
                  width:MediaQuery.of(context).size.width* 0.85,
                  // padding: EdgeInsets.only(
                  //   top:  MediaQuery.of(context).size.height* 0.0001,
                  //   // left:  MediaQuery.of(context).size.width* 0.015,
                  //   // right:  MediaQuery.of(context).size.width* 0.015
                  // ),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.light.withOpacity(0.3),
                          ),
                          child:  Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.03,
                              vertical: MediaQuery.of(context).size.height * 0.03,),
                            child: SvgPicture.asset(SvgAssets.instagram,),
                          )
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width* 0.03,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: (AppStrings.instagram),
                              style: h6Bold20Black.copyWith(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: (AppStrings.tf),
                              style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                                  color: AppColors.secondaryColor.withOpacity(0.6),
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.02,),
              Card(
                color:AppColors.another,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  height:MediaQuery.of(context).size.height* 0.13 ,
                  width:MediaQuery.of(context).size.width* 0.85,
                  // padding: EdgeInsets.only(
                  //   top:  MediaQuery.of(context).size.height* 0.0001,
                  //   // left:  MediaQuery.of(context).size.width* 0.015,
                  //   // right:  MediaQuery.of(context).size.width* 0.015
                  // ),
                  child:Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.15,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.light.withOpacity(0.3),
                          ),
                          child:  Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width * 0.03,
                              vertical: MediaQuery.of(context).size.height * 0.03,),
                            child: SvgPicture.asset(SvgAssets.pinterest,),
                          )
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width* 0.03,),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: (AppStrings.pinterest),
                              style: h6Bold20Black.copyWith(fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                              text: (AppStrings.tf),
                              style: h5Light16Grey.copyWith(fontWeight:FontWeight.w400,
                                  color: AppColors.secondaryColor.withOpacity(0.6),
                                  fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.08,),
              Text(AppStrings.ensure,style: h5Light16Grey.copyWith(color: AppColors.blackShade,
              fontSize: 14,fontWeight: FontWeight.w400),),
              SizedBox(
                height: MediaQuery.of(context).size.height* 0.08,)
            ],
          ),
        ),
      ),
    );
  }
}
