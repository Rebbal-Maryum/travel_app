import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/Config/assets.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/screens/loginScreens/Personal.dart';

import '../../Config/Colors.dart';
class AttractionIntro extends StatefulWidget {
  const AttractionIntro({super.key});

  @override
  State<AttractionIntro> createState() => _AttractionIntroState();
}

class _AttractionIntroState extends State<AttractionIntro> {
  double rating=5;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImageAssets.background),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 15,
              child: IconButton(
              icon: Icon(Icons.arrow_back,color: AppColors.whitecolor,),
              onPressed: () {
                Navigator.pop(context);
              },
            ),),
            Positioned(
              top: 300,
                left: 70,
                child: Text(AppStrings.cottage,style: h7Light22White.copyWith(
                  fontSize: 35
                ),)),
    Positioned(
    top: 360,
      // width: screenSize.width,
      // height: screenSize.height -32,
    child: Container(
      height:screenSize.height -50 ,
      width: screenSize.width,
      child: Card(
      color: AppColors.whitecolor,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
      topLeft: Radius.circular(28),
      topRight: Radius.circular(28),
      bottomLeft: Radius.circular(0),
      bottomRight: Radius.circular(0),
      ),
      ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(AppStrings.bail,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
              fontSize: 14),),
              SizedBox(
                height: 5,
              ),
              Text(AppStrings.baildes,style: h5Light16Grey.copyWith(fontWeight: FontWeight.w400,
                  fontSize: 14,color: AppColors.light),),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                    itemSize: 18,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (newrating) {
                      setState(() {
                        rating=newrating;
                      });
                    },
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: ('$rating'),
                          style: h9Light14White.copyWith(fontSize: 12,color: AppColors.primaryColor,
                          fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: (' (78 reviews)'),
                          style:h9Light14White.copyWith(fontSize: 12,color: AppColors.light)
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  GestureDetector(
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) =>
                        //   ),
                        // );
                      },
                      child: Text(AppStrings.review,style:h9Light14White.copyWith
                        (fontSize: 12,color: AppColors.light))
                  ),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              Text(AppStrings.pricing,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                  fontSize: 14),),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset(ImageAssets.flight),
                  SizedBox(
                    width: 15,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.flight),
                            style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                                fontSize: 14),
                        ),
                        TextSpan(
                            text: (AppStrings.from1),
                          style: h5Light16Grey.copyWith(fontWeight: FontWeight.w400,
                              fontSize: 12,color: AppColors.light),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  GestureDetector(
                      child: Image.asset(ImageAssets.arrow)),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Image.asset(ImageAssets.hotel),
                  SizedBox(
                    width: 25,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: (AppStrings.hotel),
                          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
                              fontSize: 14),
                        ),
                        TextSpan(
                          text: (AppStrings.from2),
                          style: h5Light16Grey.copyWith(fontWeight: FontWeight.w400,
                              fontSize: 12,color: AppColors.light),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 163,
                  ),
                  GestureDetector(
                      child: Image.asset(ImageAssets.arrow)),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (c)=>PersonalCenter()));
              }, child: Text(AppStrings.plan,style:h4Bold26Black.copyWith(fontSize: 16,color:
              AppColors.whitecolor,fontWeight: FontWeight.w500)),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 15,bottom: 15,
                      left: 140,right: 140)),
                  backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
                ),),


            ],
          ),
        ),
      ),
    ),
    ),

          ],
        ),
      ),
    );
  }
}
