


import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:travel_app/Config/Colors.dart';
import 'package:travel_app/components/timelineTile.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';

import '../../components/customContainer.dart';
import '../../config/assets.dart';

class ItineraryScreen extends StatefulWidget {
  const ItineraryScreen({super.key});

  @override
  State<ItineraryScreen> createState() => _ItineraryScreenState();
}

class _ItineraryScreenState extends State<ItineraryScreen> {
  int myindex=0;
  late int selectedPage;
  late final PageController _pageController;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 15, top: 60),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: (AppStrings.morning),
                            style: h5Light16Grey.copyWith(
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                            text: (AppStrings.hello),
                            style: h6Bold20Black.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 22,
                            ),
                          )
                        ],
                      ),
                    ),
                   SizedBox(
                     width:MediaQuery.of(context).size.width* 0.29 ,
                   ),
                    Image.asset(
                      ImageAssets.circle1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  AppStrings.island,
                  style: h6Bold20Black.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 230,
                  width: 500,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ContainerWithPageView(),
                    ],
                  ),
                ),
                Text(
                  AppStrings.timeline,
                  style: h6Bold20Black.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 300,
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0, vertical: 0),
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
                          isLast: true,
                          isPast: false,
                          startContent: buildStartContent3(),
                          endContent: buildEndContent3(),
                        ),
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),

    );
  }


}
