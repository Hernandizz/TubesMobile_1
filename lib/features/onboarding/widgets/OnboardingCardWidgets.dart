import 'package:flutter/material.dart';
import '../../../core/global_component/Typography.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingCardWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          height: 200,
        ),
        const SizedBox(height: 40),
        Text(
          title,
          style: AppTypography.heading,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            description,
            style: AppTypography.body,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}