import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../config/assets.dart';
import '../config/strings.dart';

class MapData {
  late BitmapDescriptor customIcon;
  MapData() {
    _init();
  }
  Future<void> _init() async {
    await customMarker();
  }
  Future<void> customMarker() async {
    customIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(size: Size(26,26)),
      'assets/images/marker.png',
    );
  }
  List<Marker> getMarkersList() {
    return [
      Marker(
        markerId: MarkerId('marker1'),
        position: LatLng(33.6486, 73.0690), // Police Foundation Rawalpindi
        infoWindow: InfoWindow(title: 'Police Foundation '),
        icon: customIcon,
      ),
      Marker(
        markerId: MarkerId('marker2'),
        position: LatLng(33.6785, 72.9933), // PWD Rawalpindi
        infoWindow: InfoWindow(title: 'PWD '),
        icon: customIcon,
      ),
      Marker(
        markerId: MarkerId('marker3'),
        position: LatLng(33.6841, 73.0218), // KIPS PWD Rawalpindi
        infoWindow: InfoWindow(title: 'KIPS PWD '),
        icon: customIcon,
      ),
      Marker(
        markerId: MarkerId('marker4'),
        position: LatLng(33.6989, 73.0494), // Virtual University PWD Islamabad
        infoWindow: InfoWindow(title: 'Virtual University PWD '),
        icon: customIcon,
      ),
      Marker(
        markerId: MarkerId('marker5'),
        position: LatLng(33.6325, 73.0976), // Pakistan Town Rawalpindi
        infoWindow: InfoWindow(title: 'Pakistan Town '),
        icon: customIcon,
      ),
    ];
  }
  List<String> imagesmap=[
    ImageAssets.map,
    ImageAssets.map,
  ];
  List<String> headingsmap=[
    AppStrings.mapData1,
    AppStrings.mapData2,
  ];
  List<String> pricedetail=[
    AppStrings.greyy,
    AppStrings.greyy,
  ];
  List<String> subheadings=[
    AppStrings.locationprice1,
    AppStrings.locationprice2,
  ];
}
