import 'package:flutter/material.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/screens/guidePage.dart';

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
home: Scaffold(
  body: Padding(
    padding: const EdgeInsets.only(left: 15, top: 60),
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(

        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back,color: AppColors.primaryColor,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: 30,
              ),
              Text(AppStrings.form, style: h6Bold20Black.copyWith(fontSize: 26,fontWeight:
              FontWeight.w600),),
              SizedBox(
                width: 40,
              ),
              GestureDetector(
                onTap: (){
                },
                child:  Image.asset(
                  ImageAssets.qr,
                ),
              )
            ],
          ),
          SizedBox(
            height:30 ,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (c)=>MapScreen()));
              }, child: Text(AppStrings.iland,style:h4Bold26Black.copyWith(fontSize: 16,color:
              AppColors.whitecolor,fontWeight: FontWeight.w500)),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 10,bottom: 10,
                      left: 30,right: 30)),
                  backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
                ),),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(BorderSide(
                    color: AppColors.secondaryColor, // Set the border color here
                    width: 1.0, // Set the border width here
                  )),
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 10,bottom: 10,
                      left: 30,right: 30)), // Set the padding here
                ),
                child:Text(AppStrings.beach,style:h4Bold26Black.copyWith(fontSize: 16,color:
      AppColors.secondaryColor,fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                width: 10,
              ),
              OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  side: MaterialStateProperty.all(BorderSide(
                    color: AppColors.secondaryColor, // Set the border color here
                    width: 1.0, // Set the border width here
                  )),
                  padding: MaterialStateProperty.all(EdgeInsets.only(top: 10,bottom: 10,
                      left: 30,right: 30)), // Set the padding here
                ),
                child:Text(AppStrings.resort,style:h4Bold26Black.copyWith(fontSize: 16,color:
                AppColors.secondaryColor,fontWeight: FontWeight.w500)),
              ),
            ],
          ),
        SizedBox(
          height: 30,
        ),
          Container(
            height: 49, // Adjust the height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 31 - 13, // Days from the 14th onwards
              itemBuilder: (context, index) {
                int day = index + 14;
                int dayNumber = index + 1; // Day number starting from 1

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
                              text:('\nJuly $day'),
                              style: h5Light16Grey,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 60,),
                  ],
                );
              },
            ),
          ),
          Container(
            height: 460,
            // width: 500,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
          ElevatedButton(onPressed: (){}, child: Text(AppStrings.itinerary,style:h4Bold26Black.copyWith(fontSize: 16,color:
          AppColors.whitecolor,fontWeight: FontWeight.w500)),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.only(top: 15,bottom: 15,
                  left: 65,right: 65)),
              backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
            ),),
          SizedBox(height: 50,)
        ],


      ),
    ),
  ),
  bottomNavigationBar: BottomNavigationBar(
    selectedItemColor: AppColors.navigatorColor,
    unselectedItemColor: AppColors.secondaryColor,
    type: BottomNavigationBarType.fixed,
    onTap: (index) {
      setState(() {
        myindex = index;
        if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AttractionIntro(),
            ),
          );
        }
      });
    },
    currentIndex: myindex,
    items: const [
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(ImageAssets.bottom1),
        ),
        label: AppStrings.bottomh1,
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(ImageAssets.bottom2),
        ),
        label: AppStrings.bottomh2,
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(ImageAssets.bottom3),
        ),
        label: AppStrings.bottomh3,
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(ImageAssets.bottom4),
        ),
        label: AppStrings.bottomh4,
      ),
    ],
  ),
),
    );
  }
}
