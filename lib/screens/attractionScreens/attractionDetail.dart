import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_app/screens/introductionScreen/frontScreen.dart';
import 'package:travel_app/screens/itineraryScreens/itineraryPage.dart';
import 'package:travel_app/screens/mapScreens/mapScreen.dart';
import '../../config/assets.dart';
import 'package:five_pointed_star/five_pointed_star.dart';

import '../../controller/controller_attractionScreen.dart';
class AttractionDetails extends StatefulWidget {
  const AttractionDetails({super.key});

  @override
  State<AttractionDetails> createState() => _AttractionDetailsState();
}

class _AttractionDetailsState extends State<AttractionDetails> {
  double rating=5;
  final AttractionDetailsController attractionDetailsController =
  Get.find<AttractionDetailsController>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Stack(
      children: [
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
      image: AssetImage(attractionDetailsController.selectedImage.value),
      fit: BoxFit.cover,
          ),
        ),
        ),
        Positioned(
          top: 50,
        left: 20,
          child: IconButton(
          icon: Icon(Icons.arrow_back,color: AppColors.searchColor,),
          onPressed: () {
      Navigator.pop(context);
          },
        ),
        ),
        Positioned(
            bottom: 220,
            left: 20,
      // child: Text(AppStrings.cottage,style: h7Light22White.copyWith(fontSize: 42,),
            child: Text(attractionDetailsController.selectedHeading.value,
              style: h7Light22White.copyWith(fontSize: 42),)
        ),
        Positioned(
            bottom: 155,
            left: 20,
            child: Text(AppStrings.cottagesub,style:h9Light14White.copyWith(color: AppColors.attraction))
        ),
        Positioned(
            bottom: 120,
            left: 20,
            child: Row(
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
                Text(
                  '$rating (78 reviews)',
                  style:h9Light14White.copyWith(fontSize: 12),
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
                    child: Text(AppStrings.review,style:h9Light14White.copyWith(fontSize: 12,color: AppColors.attraction))
                ),
              ],
            ),
        ),
        Positioned(
            bottom: 30,
            left: 20,
            child: Row(
          children: [
            ElevatedButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (c)=>ItineraryScreen()));
            }, child: Text(AppStrings.button1,style:h8Light12White.copyWith(fontSize: 14,
            fontWeight: FontWeight.normal),),
              style: ButtonStyle(
                padding:MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.022,
                    horizontal: MediaQuery.of(context).size.width * 0.09,
                  ),),
                backgroundColor:MaterialStateProperty.all(AppColors.button1),
              ),),
            SizedBox(width: (MediaQuery.of(context).size.width * 0.03),),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (c)=>MapScreen()));
            },
              child: Text(AppStrings.button2,style:h4Bold26Black.copyWith(fontSize: 14)),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
    EdgeInsets.symmetric(
    vertical: MediaQuery.of(context).size.height * 0.022,
    horizontal: MediaQuery.of(context).size.width * 0.099,
    ),),
                backgroundColor:MaterialStateProperty.all(AppColors.whitecolor),
              ),),
          ],
        ))

      ],
      ),
      ),
    );
  }
}
