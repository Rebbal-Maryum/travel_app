import 'package:get/get.dart';

class AttractionDetailsController extends GetxController {
  final RxString selectedImage = ''.obs;
  final RxString selectedHeading = ''.obs;

  void setSelectedDetails(String image, String heading,) {
    selectedImage.value = image;
    selectedHeading.value = heading;
  }
}
