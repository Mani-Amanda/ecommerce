import 'package:get/get.dart';

class OnbaordingController extends GetxController {
  static OnbaordingController get instance => Get.find();

  ///variables

  ///Update Current Index when page Scroll
  void updatePageIndicator(index) {}

  ///Jump to the specific dot selected page
  void dotNavigationClick(index) {}

  ///Update current index & jump to next page
  void nextPage() {}

  ///Update current Index & jump to the last page
  void skipPage() {}
}
