import 'package:flutter/material.dart';
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
            top: 100,
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
           bottom: 230,
            right: 1,
            left: 15,
            child: Text(AppStrings.mapTitle, style: h6Bold20Black.copyWith(fontSize: 24)),),
          Positioned(
            bottom: 20,
            right: 1,
            left: 15,
            child:
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:2,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Card(
                        color: AppColors.whitecolor,
                        child: Container(
                          width: 260,
                          height: 160,
                          child: Center(
                            child: Text(
                              'Card $index',
                              style: TextStyle(color: AppColors.primaryColor),
                            ),
                          ),
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

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import '../config/assets.dart';
// import '../config/colors.dart';
// import '../config/strings.dart';
// import '../config/styles.dart';
// import '../models/model_mapScreen.dart';
//
// class MapScreen extends StatefulWidget {
//   const MapScreen({Key? key}) : super(key: key);
//
//   @override
//   State<MapScreen> createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   late GoogleMapController _controller;
//   late MapData mapData;
//
//   @override
//   void initState() {
//     super.initState();
//     mapData = MapData.init();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             myLocationEnabled: false,
//             myLocationButtonEnabled: false,
//             compassEnabled: false,
//             zoomControlsEnabled: false,
//             onMapCreated: (GoogleMapController controller) {
//               _controller = controller;
//             },
//             initialCameraPosition: CameraPosition(
//               target: LatLng(33.6844, 73.0479),
//               zoom: 14,
//             ),
//             mapType: MapType.normal,
//             markers: mapData.getMarkersList().toSet(),
//           ),
//           Positioned(
//             top: 100,
//             right: 1,
//             left: 15,
//             child: Row(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(left: 5, right: 5),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     child: Icon(
//                       Icons.arrow_back,
//                       color: AppColors.primaryColor,
//                     ),
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(CircleBorder()),
//                       padding: MaterialStateProperty.all(
//                         EdgeInsets.all(18),
//                       ),
//                       backgroundColor: MaterialStateProperty.all(
//                         AppColors.whitecolor,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Flexible(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: AppColors.whitecolor,
//                       hintText: AppStrings.hintText,
//                       hintStyle: h5Light16Grey,
//                       prefixIcon: Container(
//                         padding: EdgeInsets.only(left: 20),
//                         child: Image.asset(ImageAssets.searchimg),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(50),
//                         borderSide: BorderSide(
//                           color: AppColors.searchColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(left: 5, right: 5),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Navigator.push(context, MaterialPageRoute(builder: (c)=>StartScreenTwo()));
//                     },
//                     child: Image.asset(ImageAssets.sortimg),
//                     style: ButtonStyle(
//                       shape: MaterialStateProperty.all(CircleBorder()),
//                       padding: MaterialStateProperty.all(
//                         EdgeInsets.all(18),
//                       ),
//                       backgroundColor: MaterialStateProperty.all(
//                         AppColors.navigatorColor,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: 200,
//             right: 1,
//             left: 15,
//             child: Text(AppStrings.mapTitle, style: h6Bold20Black),
//           )
//         ],
//       ),
//     );
//   }
// }

