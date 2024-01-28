import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/screens/communicationScreens/friendsCommunication.dart';
import 'package:travel_app/screens/introductionScreen/frontScreen.dart';
import 'package:travel_app/screens/itineraryScreens/itinerayForm.dart';
import '../../../config/assets.dart';
import '../Config/Colors.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
   FrontScreen(),
    ItineraryForm(),
    FriendsCommunication(),
  ];

  @override
  Widget build(BuildContext context) {
    double borderRadius = MediaQuery.of(context).size.width * 0.05;
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex != 0) {
          setState(() {
            _currentIndex = 0;
          });
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: BottomAppBar(
          // shape: CircularNotchedRectangle(
          //     borderRadius: BorderRadius.only(
          //       topLeft: Radius.circular(borderRadius),
          //       topRight: Radius.circular(borderRadius),
          //     ),
          // ),
          surfaceTintColor: AppColors.whitecolor,
          color: AppColors.whitecolor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      SvgAssets.homeicon,
                      color: _currentIndex == 0 ? AppColors.navigatorColor :
                      AppColors.light,
                    ),
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Text(AppStrings.bottomh1,
                        style: h5Light16Grey.copyWith(
                          fontSize: 14, color: _currentIndex == 0 ? AppColors.navigatorColor :
                        AppColors.light,
                        )),
                    onTap: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      SvgAssets.walleticon,
                      color: AppColors.light
                    ),
                    onTap: () {
                      // setState(() {
                      //   // _currentIndex = 1;
                      // });
                    },
                  ),
                  Text(AppStrings.bottomh2,
                      style: h5Light16Grey.copyWith(
                        fontSize: 14, color: AppColors.light,
                      ))
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      SvgAssets.guideicon,
                      color: _currentIndex == 1 ? AppColors.navigatorColor :
                      AppColors.light,
                    ),
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Text(AppStrings.bottomh3,
                        style: h5Light16Grey.copyWith(
                          fontSize: 14, color: _currentIndex == 1 ? AppColors.navigatorColor :
                        AppColors.light,
                        )),
                    onTap: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    child: SvgPicture.asset(
                      SvgAssets.charticon,
                      color: _currentIndex == 2 ? AppColors.navigatorColor :
                      AppColors.light,
                    ),
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Text(AppStrings.bottomh4,style: h5Light16Grey.copyWith(
                      fontSize: 14, color: _currentIndex == 2 ? AppColors.navigatorColor :
                    AppColors.light,
                    ),),
                    onTap: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        body: _screens[_currentIndex],
      ),
    );
  }
}
