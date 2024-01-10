import 'package:flutter/material.dart';
import 'package:travel_app/config/colors.dart';
import 'package:travel_app/config/strings.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/models/model_frontScreen.dart';
import 'package:travel_app/screens/attractionDetail.dart';
import 'package:travel_app/screens/boardingScreens/startScreen1.dart';
import '../config/assets.dart';

class FrontScreen extends StatefulWidget {
  const FrontScreen({super.key});

  @override
  State<FrontScreen> createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  int myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 60, left: 20),
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
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (c)=>StartScreenTwo()));
                          },
                          child: Image.asset(ImageAssets.sortimg),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(CircleBorder()),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.all(27),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.navigatorColor,
                            ),
                          ),
                        ),
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
                  //SizedBox(height: 5),
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
                          onTap: () {
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
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:AppColors.navigatorColor,
          unselectedItemColor:AppColors.secondaryColor,
          type: BottomNavigationBarType.fixed,
         onTap: (index){
           setState(() {
             myindex=index;
           });
           },
          currentIndex: myindex,
          items:const [
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(ImageAssets.bottom1),
          ),
              label:AppStrings.bottomh1),
          BottomNavigationBarItem(icon:ImageIcon(AssetImage(ImageAssets.bottom2),
          ),
              label: AppStrings.bottomh2),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(ImageAssets.bottom3),
          ),
              label: AppStrings.bottomh3),
          BottomNavigationBarItem(icon: ImageIcon(AssetImage(ImageAssets.bottom4),
          ),
              label: AppStrings.bottomh4,),
        ],)
      ),

    );
  }
}


