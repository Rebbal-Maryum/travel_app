import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/models/model_frontScreen.dart';
import 'package:travel_app/screens/attractionScreens/attractionDetail.dart';
import 'package:travel_app/screens/boardingScreens/startScreen1.dart';
import '../../config/assets.dart';
import '../../controller/controller_attractionScreen.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  final AttractionDetailsController attractionDetailsController =
  Get.put(AttractionDetailsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.09,
                left: MediaQuery.of(context).size.width * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(AppStrings.frontheading1, style: h3Light16Grey),
                  Text(AppStrings.frontheading2, style: h4Bold26Black),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: AppStrings.hintText,
                            hintStyle: h5Light16Grey,
                            prefixIcon: Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Image.asset(ImageAssets.searchimg),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                color: AppColors.searchColor,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide(
                                color: AppColors.primaryColor,
                                width: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: (MediaQuery.of(context).size.width * 0.03),
                            right: (MediaQuery.of(context).size.width * 0.03)),
                        child: ElevatedButton(
                          onPressed: () {
                            // Your onPressed logic here
                          },
                          child:SvgPicture.asset(SvgAssets.sortout),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.all(MediaQuery.of(context).size.width * 0.05), // Adjust padding as needed
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.navigatorColor,
                            ),
                          ),
                        )

                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    AppStrings.mainheading,
                    style: h6Bold20Black,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            attractionDetailsController.setSelectedDetails(
                              images[index],
                              headings[index],
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AttractionDetails(),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Image.asset(
                                  images[index],
                                ),
                              ),
                              Positioned(
                                top: 70,
                                left: 20,
                                child: Text(
                                  headings[index],
                                  style: h7Light22White,
                                ),
                              ),
                              Positioned(
                                top: 105,
                                left: 20,
                                child: Text(
                                  subheadings[index],
                                  style: h8Light12White,
                                ),
                              ),
                              Positioned(
                                top: 105,
                                right: 40,
                                child: Image.asset(rating[index]),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    AppStrings.mainheading,
                    style: h6Bold20Black,
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images1.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: ()
                          {
                            attractionDetailsController.setSelectedDetails(
                              images1[index],
                              headings1[index],
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AttractionDetails(),
                              ),
                            );
                          },
                          // {
                          //   Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => AttractionDetails(),
                          //     ),
                          //   );
                          //   },
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 25),
                                child: Image.asset(
                                  images1[index],

                                ),
                              ),
                              Positioned(
                                top: 130,
                                left: 5,
                                child: Text(
                                 headings1[index],
                                  style: h7Light22White.copyWith(fontSize: 18),
                                ),
                              ),
                              Positioned(
                                top: 160,
                                left: 20,
                                child: Text(
                                  subheadings1[index],
                                  style: h8Light12White,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );


  }
}


