import 'package:flutter/material.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/screens/itineraryScreens/itinerayForm.dart';
import '../Config/Colors.dart';
import '../Config/assets.dart';

class ContainerWithPageView extends StatefulWidget {
  @override
  _ContainerWithPageViewState createState() => _ContainerWithPageViewState();
}
class _ContainerWithPageViewState extends State<ContainerWithPageView> {
  final PageController _pageController = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: PageView(
        controller: _pageController,
        onPageChanged: (page) {
          setState(() {
            selectedPage = page;
          });
        },
        children: [
          buildContainer(),
          buildContainer(),
        buildContainer(),
        ],
      ),
    );
  }
  Widget buildContainer() {
    return Stack(
      children: [
        Row(
          children: [
            Container(
              child: Image.asset(ImageAssets.customized),
            ),
          ],
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Row(
            children: [
              Icon(Icons.location_on,
              color: AppColors.light,),
              // Image.asset(ImageAssets.location),
              SizedBox(width: 3,),
              Text(AppStrings.stacked, style: h5Light16Grey.copyWith(fontSize: 12),),
              SizedBox(width: MediaQuery.of(context).size.width * 0.08,),
              Container(
                // height: 200,
                width: 300,
                child:Image.asset(ImageAssets.newpic,
                height: 40,
                width: 60,),
              )
            ],
          )
        ),
        Positioned( right: MediaQuery.of(context).size.width * 0.1,
          bottom: MediaQuery.of(context).size.height * 0.1,

          child:  ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (c)=>ItineraryForm()));
        }, child: Text(AppStrings.maldives,style:h8Light12White.copyWith(fontSize: 14,
            fontWeight: FontWeight.normal),),
          style: ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(12))),
            padding: MaterialStateProperty.all(EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10)),
            backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor,
            ),),),),


        Positioned(
          bottom: 40,
          left: 0,
          right: 0,
          child: buildPageIndicator(),
        ),

      ],
    );
  }
  Widget buildPageIndicator() {
    return Row(
       mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          width: 5,
          height: 5,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedPage == index ? AppColors.secondaryColor: AppColors.searchColor,
          ),
        );
      }),
    );
  }
}