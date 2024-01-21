import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:travel_app/Config/Colors.dart';
import 'package:travel_app/components/eventCard1.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';

import '../Config/assets.dart';

class CustomTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget startContent;
  final Widget endContent;

  const CustomTimelineTile({
    Key? key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.startContent,
    required this.endContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.2,
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(
        color: isFirst ? AppColors.navigatorColor : AppColors.searchColor,
        thickness: isFirst ? 3.0 : 3.0, // Adjust thickness for the first line
      ),
      indicatorStyle: IndicatorStyle(
        width: 35,
        color: isFirst ? AppColors.navigatorColor : AppColors.searchColor,
        iconStyle: IconStyle(
          iconData: isFirst ? Icons.location_on_rounded : Icons.circle,
          color: AppColors.whitecolor,
        ),
      ),
      startChild: startContent,
      endChild: endContent,
    );
  }
}
Widget buildStartContent1() {
  return Container(
    height: 25,
    width: 80,
    child: Text(AppStrings.time1,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w400,
    fontSize: 18),),
  );
}
Widget buildStartContent2() {
  return Container(
    height: 25,
    width: 80,
    child:Text(AppStrings.time2,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w400,
      fontSize: 18),),
  );
}
Widget buildStartContent3() {
  return Container(
    height: 25,
    width: 80,
    child: Text(AppStrings.time3,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w400,
        fontSize: 18),),
  );
}
Widget buildStartContent4() {
  return Container(
    height: 25,
    width: 80,
    child: Text(AppStrings.time4,style: h6Bold20Black.copyWith(fontWeight: FontWeight.w400,
        fontSize: 18),),
  );
}
Widget buildEndContent1() {
  return Container(
    height: 100,
    width: 100,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: (AppStrings.schedule1),
                style: h6Bold20Black.copyWith(fontSize: 16, fontWeight: FontWeight.w600)
              ),
              TextSpan(
                text: (AppStrings.schedulesub1),
                style: h5Light16Grey.copyWith(fontSize: 14)
              )
            ],
          ),
        ),
         SizedBox(
           width: 50,
         ),
         Image.asset(
           ImageAssets.schedule1,
         ),
      ],
    )
  );
}
Widget buildEndContent2() {
  return Container(
      height: 100,
      width: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: (AppStrings.schedule2),
                    style: h6Bold20Black.copyWith(fontSize: 16, fontWeight: FontWeight.w600)
                ),
                TextSpan(
                    text: (AppStrings.schedulesub2),
                    style: h5Light16Grey.copyWith(fontSize: 14)
                )
              ],
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Image.asset(
            ImageAssets.schedule2,
          ),
        ],
      )
  );
}
Widget buildEndContent3() {
  return Container(
      height: 100,
      width: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: (AppStrings.schedule3),
                    style: h6Bold20Black.copyWith(fontSize: 16, fontWeight: FontWeight.w600)
                ),
                TextSpan(
                    text: (AppStrings.schedulesub3),
                    style: h5Light16Grey.copyWith(fontSize: 14)
                )
              ],
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Image.asset(
            ImageAssets.schedule3,
          ),
        ],
      )
  );
}
Widget buildEndContent4() {
  return Container(
      height: 200,
      width: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: (AppStrings.island),
                    style: h6Bold20Black.copyWith(fontSize: 16, fontWeight: FontWeight.w600)
                ),
                TextSpan(
                    text: (AppStrings.schedulesub4),
                    style: h5Light16Grey.copyWith(fontSize: 14)
                )
              ],
            ),
          ),
          SizedBox(
            width: 35,
          ),
          Image.asset(
            ImageAssets.schedule4,
          ),
        ],
      )
  );
}


