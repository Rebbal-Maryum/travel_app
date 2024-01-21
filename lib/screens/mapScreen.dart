import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../config/assets.dart';
import '../config/colors.dart';
import '../config/strings.dart';
import '../config/styles.dart';
import '../models/model_frontScreen.dart';
import '../models/model_mapScreen.dart';
import 'attractionDetail.dart';


class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  double rating=4;
  late GoogleMapController _controller;
  late MapData mapData;

  @override
  void initState() {
    super.initState();
    mapData = MapData();
    _initializeMap();
  }

  Future<void> _initializeMap() async {
    await mapData.customMarker();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: false,
            myLocationButtonEnabled: false,
            compassEnabled: false,
            zoomControlsEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
            initialCameraPosition: CameraPosition(
              target: LatLng(33.6844, 73.0479),
              zoom: 14,
            ),
            mapType: MapType.normal,
            markers: mapData.getMarkersList().toSet(),
          ),
          Positioned(
            top: 85,
            right: 1,
              left: 15,
            child:Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,
                  color: AppColors.primaryColor,),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(18),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.whitecolor,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.whitecolor,
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
                margin: EdgeInsets.only(left: 5, right: 5),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (c)=>StartScreenTwo()));
                  },
                  child: Image.asset(ImageAssets.sortimg),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(CircleBorder()),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.all(18),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      AppColors.navigatorColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
          Positioned(
           bottom: 240,
            right: 1,
            left: 15,
            child: Text(AppStrings.mapTitle, style: h6Bold20Black.copyWith(fontSize: 24,fontWeight: FontWeight.w600)),),
          Positioned(
            bottom: 40,
            right: 1,
            left: 15,
            child:
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:mapData.imagesmap.length,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Card(
                        color: AppColors.whitecolor,
                        child: Container(
                          width: 280,
                          height: 180,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15,top: 7,bottom: 7),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //   context,
                                          //   MaterialPageRoute(
                                          //     builder: (context) => AttractionDetails(),
                                          //   ),
                                          // );
                                        },
                                        child: Image.asset(mapData.imagesmap[index],)),
                                    SizedBox(width: 18,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 9,),
                                        Text(mapData.headingsmap[index],
                                        style:h6Bold20Black.copyWith(fontSize: 17, fontWeight: FontWeight.w600) ,),
                                        SizedBox(height: 10,),
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 4,
                                          itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                          itemSize: 18,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (newrating) {
                                            setState(() {
                                              rating=newrating;
                                            });
                                          },
                                        ),
                                        SizedBox(height: 10,),
                                        Text(mapData.pricedetail[index],
                                          style:h5Light16Grey.copyWith(fontSize: 14) ,),
                                        Row(
                                          children: [
                                            Text(mapData.subheadings[index],
                                                style:h6Bold20Black.copyWith(fontSize: 15, fontWeight: FontWeight.w500)),
                                            SizedBox(width: 5,),
                                            ElevatedButton(onPressed: (){
                                            //  Navigator.push(context, MaterialPageRoute(builder: (c)=>StartScreenTwo()));
                                            }, child: Image.asset(ImageAssets.like),
                                              style: ButtonStyle(
                                                shape: MaterialStateProperty.all(CircleBorder()),
                                                padding: MaterialStateProperty.all(EdgeInsets.all(1)),
                                                backgroundColor:MaterialStateProperty.all(AppColors.navigatorColor),
                                              ),),

                                          ],
                                        )

                                        


                                      ],
                                    ),

                                  ],
                                ),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          ),
        ],
      ),
    );
  }
}

