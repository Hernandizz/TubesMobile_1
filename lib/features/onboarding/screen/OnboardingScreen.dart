import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/OnboardingController.dart';
import '../../../core/constants/string_constants.dart';
import '../../../core/constants/image_constants.dart';
import '../../../core/constants/color_constants.dart';
import '../widgets/OnboardingCardWidgets.dart';
import '../widgets/SkipButtonWidgets.dart';
import '../../../core/global_component/ButtonComponent.dart';

class OnboardingScreen extends StatelessWidget {
  final controller = Get.put(OnboardingController());

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.background,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: SkipButtonWidget(
                  onPressed: controller.skip,
                ),
              ),
            ),
            Expanded(
              child: PageView(
                onPageChanged: (index) => controller.currentPage.value = index,
                children: const [
                  OnboardingCardWidget(
                    image: ImageConstants.ingredients,
                    title: StringConstants.explore,
                    description: StringConstants.exploreDesc,
                  ),
                  OnboardingCardWidget(
                    image: ImageConstants.waffle,
                    title: StringConstants.tailored,
                    description: StringConstants.tailoredDesc,
                  ),
                  OnboardingCardWidget(
                    image: ImageConstants.pancakes,
                    title: StringConstants.guidance,
                    description: StringConstants.guidanceDesc,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Obx(
                    () => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.currentPage.value == index
                            ? ColorConstants.primary
                            : ColorConstants.primary.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Obx(
                () => ButtonComponent(
                  text: controller.currentPage.value == 2
                      ? StringConstants.letsGetCooking
                      : StringConstants.skip,
                  onPressed: controller.nextPage,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}