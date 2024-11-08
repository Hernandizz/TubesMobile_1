import 'package:get/get.dart';
import '../../features/onboarding/screen/OnboardingScreen.dart';

class RouteUtils {
  static final routes = [
    GetPage(
      name: '/onboarding',
      page: () => OnboardingScreen(),
    ),
    // Add more routes here
  ];
}