import 'package:flutter/material.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/screens/attractionScreens/guidePage.dart';
import 'package:travel_app/screens/loginScreens/Personal.dart';

import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../../components/timelineTile.dart';
class ItineraryForm extends StatefulWidget {
  const ItineraryForm({super.key});

  @override
  State<ItineraryForm> createState() => _ItineraryFormState();
}

class _ItineraryFormState extends State<ItineraryForm> {
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: Scaffold(
  body: SingleChildScrollView(
    // scrollDirection: Axis.vertical,
    child: Column(
      children: [
    Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07,
    left: MediaQuery.of(context).size.width* 0.03,
      right: MediaQuery.of(context).size.width* 0.04,
    ),
      height:MediaQuery.of(context).size.height* 0.35,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(Icons.arrow_back, color: AppColors.primaryColor),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            Spacer(),
            Text(
              AppStrings.form,
              style: h6Bold20Black.copyWith(
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
           Spacer(),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                ImageAssets.qr,
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (c)=>MapScreen()));
              },
              child: Text(
                AppStrings.iland,
                style: h4Bold26Black.copyWith(
                  fontSize: 16,
                  color: AppColors.whitecolor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30)),
                backgroundColor: MaterialStateProperty.all(AppColors.navigatorColor),
              ),
            ),
            Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: AppColors.light,
                    width: 0.5,
                  ),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30)),
              ),
              child: Text(
                AppStrings.beach,
                style: h4Bold26Black.copyWith(fontSize: 16, color: AppColors.light, fontWeight: FontWeight.w500),
              ),
            ),
            Spacer(),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                side: MaterialStateProperty.all(
                  BorderSide(
                    color: AppColors.light,
                    width: 0.5,
                  ),
                ),
                padding: MaterialStateProperty.all(EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30)),
              ),
              child: Text(
                AppStrings.resort,
                style: h4Bold26Black.copyWith(fontSize: 16, color: AppColors.light, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 49,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 31 - 13,
            itemBuilder: (context, index) {
              int day = index + 14;
              int dayNumber = index + 1;

              return Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: ('Day $dayNumber'),
                            style: h6Bold20Black.copyWith(fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: ('\nJuly $day'),
                            style: h5Light16Grey.copyWith(color: AppColors.light),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 60,)
                  // Add any additional widgets you need for each day here
                ],
              );
            },
          ),
        ),

      ],
    ),
      color: AppColors.whitecolor,
  ),

  Container(
          height: 460,
          // width: 500,
          child: Padding(
            padding: EdgeInsets.only(
              left:  MediaQuery.of(context).size.width* 0.04,
              right: MediaQuery.of(context).size.width* 0.04,),
            child: ListView(
              children: [
                CustomTimelineTile(
                  isFirst: true,
                  isLast: false,
                  isPast: true,
                  startContent: buildStartContent1(),
                  endContent: buildEndContent1(),
                ),
                CustomTimelineTile(
                  isFirst: false,
                  isLast: false,
                  isPast: true,
                  startContent: buildStartContent2(),
                  endContent: buildEndContent2(),
                ),
                CustomTimelineTile(
                  isFirst: false,
                  isLast: false,
                  isPast: true,
                  startContent: buildStartContent3(),
                  endContent: buildEndContent3(),
                ),
                CustomTimelineTile(
                  isFirst: false,
                  isLast: true,
                  isPast: false,
                  startContent: buildStartContent4(),
                  endContent: buildEndContent4(),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>
          AttractionIntro()));
        }, child: Text(AppStrings.itinerary,style:h4Bold26Black.copyWith(fontSize: 16,color:
        AppColors.whitecolor,fontWeight: FontWeight.w500)),
          style: ButtonStyle(
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.2,
                vertical: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
            backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
          ),),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
      ],


    ),
  ),
),
    );
  }
}
