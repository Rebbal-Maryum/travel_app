import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/screens/schedulingScreens/transportationArrangement.dart';
import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../../config/strings.dart';
import '../../config/styles.dart';
class TravelArrangementScreen extends StatefulWidget {
  const TravelArrangementScreen({super.key});

  @override
  State<TravelArrangementScreen> createState() => _TravelArrangementScreenState();
}

class _TravelArrangementScreenState extends State<TravelArrangementScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
body: SingleChildScrollView(
  child: Column(
    children: [
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.07,
          left: MediaQuery.of(context).size.width* 0.03,
          right: MediaQuery.of(context).size.width* 0.04,
        ),
        height:MediaQuery.of(context).size.height* 0.25 ,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,),
                Text(
                  AppStrings.add,
                  style: h6Bold20Black.copyWith(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
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
      // SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
      Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.04,
          left: MediaQuery.of(context).size.width* 0.04,
          right: MediaQuery.of(context).size.width* 0.05,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time,color: AppColors.light,),
                      Text(AppStrings.t1,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                      fontSize: 18),),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child:
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(AppStrings.wake,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                          fontSize: 16),),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.08
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.searchColor
                        ),
                        child: Center(
                          child: Image.asset(
                            ImageAssets.wake,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time,color: AppColors.light,),
                      Text(AppStrings.t2,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child:
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(AppStrings.city,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                          fontSize: 16),),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.searchColor
                        ),
                        child: Center(
                          child: Image.asset(
                            ImageAssets.car,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time,color: AppColors.light,),
                      Text(AppStrings.t3,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child:
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(AppStrings.sailing,
                        style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                          fontSize: 16,),),
                      SizedBox(
                          // width: MediaQuery.of(context).size.width * 0.03
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.searchColor
                        ),
                        child: Center(
                          child: Image.asset(
                            ImageAssets.boat,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.27,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_time,color: AppColors.light,),
                      Text(AppStrings.t4,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0), // Border radius for rounded corners
                    border: Border.all(
                      color: AppColors.light,
                      width: 0.1,
                    ),),
                  child:
                  Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(AppStrings.diving,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w500,
                          fontSize: 16),),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.1,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.searchColor
                        ),
                        child: Center(
                          child: Image.asset(
                            ImageAssets.dive,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (c)=>TravelArrangementScreen()));
            }, child: Text(AppStrings.activity,style:h4Bold26Black.copyWith(fontSize: 16,color:
            AppColors.whitefaded,fontWeight: FontWeight.w500)),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.017,
                    horizontal: MediaQuery.of(context).size.width * 0.30,
                  ),
                ),
                backgroundColor:MaterialStateProperty.all(AppColors.faded),
              ),),
            SizedBox(height: MediaQuery.of(context).size.height * 0.16),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute
                (builder: (c)=>TransportationScreen()));
            }, child: Text(AppStrings.next,style:h4Bold26Black.copyWith(fontSize: 16,color:
            AppColors.whitecolor,fontWeight: FontWeight.w500)),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.017,
                    horizontal: MediaQuery.of(context).size.width * 0.34,
                  ),
                ),
                backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
              ),),

          ],
        ),
      ),
      // Icon(Icons.access_time,color: AppColors.light,)
    ],
  ),
),
      ),
    );
  }
}
