import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/config/assets.dart';
import 'package:travel_app/screens/communicationScreens/socialSharing.dart';

import '../../Config/Colors.dart';

import '../../config/strings.dart';
import '../../config/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../communicationScreens/friendsCommunication.dart';
class TransportationScreen extends StatefulWidget {
  const TransportationScreen({super.key});

  @override
  State<TransportationScreen> createState() => _TransportationScreenState();
}

class _TransportationScreenState extends State<TransportationScreen> {
  double rating=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          automaticallyImplyLeading: false,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.001,
              top: MediaQuery.of(context).size.height * 0.035,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back,color: AppColors.primaryColor,),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,),
          Text(
            AppStrings.travel,
            style: h6Bold20Black.copyWith(
              fontSize: 23,
              fontWeight: FontWeight.w600,
            ),),
              ],
            ),
          ),
        ),
      ),
body: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05,
            top: MediaQuery.of(context).size.height * 0.03,
            right: MediaQuery.of(context).size.width * 0.05,),
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text( (AppStrings.hotel),
          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
              fontSize: 16),),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.015,),
        Stack(
          children: [
            Image.asset(
              ImageAssets.scenery,
            ),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.03,
                top: MediaQuery.of(context).size.height * 0.03,
                child: Text(AppStrings.cottagepoppins,style: h8Light12White.copyWith(
                    fontWeight: FontWeight.w600,fontSize: 14
                ),)),
            Positioned(
                left: MediaQuery.of(context).size.width * 0.03,
                top: MediaQuery.of(context).size.height * 0.07,
                child: RatingBar.builder(
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
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.03,),
        Text( (AppStrings.flight),
          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
              fontSize: 16),),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.015,),
        Row(
          children: [
            Card(
              color:AppColors.another,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height:MediaQuery.of(context).size.height* 0.3 ,
                width:MediaQuery.of(context).size.width* 0.36 ,
                // padding: EdgeInsets.only(
                //   top:  MediaQuery.of(context).size.height* 0.0001,
                //   // left:  MediaQuery.of(context).size.width* 0.015,
                //   // right:  MediaQuery.of(context).size.width* 0.015
                // ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.light.withOpacity(0.3),
                      ),
                      child: Center(
                        child: Image.asset(
                          ImageAssets.China,
                        ),
                      ),
                    ),
                    Text(
                      AppStrings.china,style: h6Bold20Black.copyWith(fontSize: 34,
      fontWeight: FontWeight.w400),
                      ),
                    Text(AppStrings.d1,style: h5Light16Grey,),
      SizedBox(
      height: MediaQuery.of(context).size.height* 0.015,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         SvgPicture.asset(SvgAssets.sortit),
                        Text(AppStrings.first,style: h3Light16Grey.copyWith(color:
                        AppColors.navigatorColor,),),
                      ],
                    )
                  ],
                ),
              ),
            ),
            IconButton(onPressed: (){}, icon:  SvgPicture.asset(SvgAssets.arow),),
            Card(
              color:AppColors.another,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                height:MediaQuery.of(context).size.height* 0.3 ,
                width:MediaQuery.of(context).size.width* 0.36,
                // padding: EdgeInsets.only(
                //   top:  MediaQuery.of(context).size.height* 0.0001,
                //   // left:  MediaQuery.of(context).size.width* 0.015,
                //   // right:  MediaQuery.of(context).size.width* 0.015
                // ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.15,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.light.withOpacity(0.3),
                      ),
                      child: Center(
                        child: Image.asset(
                          ImageAssets.UK,
                        ),
                      ),
                    ),
                    Text(
                      AppStrings.uk,style: h6Bold20Black.copyWith(fontSize: 34,
                        fontWeight: FontWeight.w400),
                    ),
                    Text(AppStrings.d2,style: h5Light16Grey,),
                    SizedBox(
                      height: MediaQuery.of(context).size.height* 0.015,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(SvgAssets.sortit),
                        Text(AppStrings.first,style: h3Light16Grey.copyWith(color:
                        AppColors.navigatorColor,),),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.03,),
        Text( (AppStrings.flight),
          style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600,
              fontSize: 16),),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.01,),
        Row(
          children: [
            Text(AppStrings.hotels,style: h6Bold20Black.copyWith
              (fontWeight: FontWeight.w400,
                fontSize: 16)),
            Expanded(
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: 180,
                lineThickness: 2.0,
                dashLength: 4.0,
                dashColor: AppColors.searchColor,
                dashGapLength: 2.0,
                // dashGapColor: Colors.transparent,
              ),
            ),
            Text(AppStrings.pr1,style: h6Bold20Black.copyWith
              (fontWeight: FontWeight.w500,
                color: AppColors.navigatorColor,
                fontSize: 16)),

          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.01,),
        Row(
          children: [
            Text(AppStrings.flight,style: h6Bold20Black.copyWith
              (fontWeight: FontWeight.w400,
                fontSize: 16)),
            Expanded(
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: 235,
                lineThickness: 2.0,
                dashLength: 4.0,
                dashColor: AppColors.searchColor,
                dashGapLength: 2.0,
                // dashGapColor: Colors.transparent,
              ),
            ),
            Text(AppStrings.pr2,style: h6Bold20Black.copyWith
              (fontWeight: FontWeight.w500,
                color: AppColors.navigatorColor,
                fontSize: 16)),

          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height* 0.01,),
        Row(
          children: [
            Text(AppStrings.total,style: h6Bold20Black.copyWith
              (fontWeight: FontWeight.w400,
                fontSize: 16)),
            Expanded(
              child: DottedLine(
                direction: Axis.horizontal,
                lineLength: 249,
                lineThickness: 2.0,
                dashLength: 4.0,
                dashColor: AppColors.searchColor,
                dashGapLength: 2.0,
                // dashGapColor: Colors.transparent,
              ),
            ),
            Text(AppStrings.pr3,style: h6Bold20Black.copyWith
              (fontWeight: FontWeight.w500,
                color: AppColors.navigatorColor,
                fontSize: 16)),

          ],
        ),

        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute
            (builder: (c)=>FriendsCommunication()));
        }, child: Center(
          child: Text(AppStrings.determining,style:h4Bold26Black.copyWith(fontSize: 16,color:
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

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.043,),

      ],
    ),
  ),
),
    );
  }
}
