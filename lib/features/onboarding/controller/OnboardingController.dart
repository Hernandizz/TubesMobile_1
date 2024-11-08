import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final RxInt currentPage = 0.obs;
  
  void nextPage() {
    if (currentPage.value < 2) {
      currentPage.value++;
    } else {
      // Navigate to home or next screen
      Get.offAllNamed('/home');
    }
  }

  void skip() {
    Get.offAllNamed('/home');
  }
}