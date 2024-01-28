import 'package:flutter/material.dart';
import '../../Config/Colors.dart';
import '../../Config/assets.dart';
import '../../components/bottomNavigation.dart';
import '../../config/styles.dart';
import '../../models/model2_onBoarding.dart';

class OnboardingScreen extends StatefulWidget {
  final List<OnboardingItem> onboardingData;

  OnboardingScreen({required this.onboardingData});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;



  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: widget.onboardingData.length,
        itemBuilder: (context, index) {
          OnboardingItem item = widget.onboardingData[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                item.imagePath,
                  width: 406,
                  height: 306
              ),
              Text(
                item.heading,
                style:h1Bold24Black,
              ),
              SizedBox(height: 10),
              Text(
                item.subheading,
                style:h2Light18Grey,
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(top: 10,),
                child: ElevatedButton(
                  onPressed: () {
                    if (_currentPage < widget.onboardingData.length - 1) {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    } else {
                      Navigator.push(context, MaterialPageRoute(builder: (c)=>BottomBar(),));
                    }
                  },
                  child:Image.asset(ImageAssets.navigator),
          style: ButtonStyle(
                shape: MaterialStateProperty.all(CircleBorder()),
                padding: MaterialStateProperty.all(EdgeInsets.all(20)),
                backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
              ),
                ),
              ),
            ],
          );
        },
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}
