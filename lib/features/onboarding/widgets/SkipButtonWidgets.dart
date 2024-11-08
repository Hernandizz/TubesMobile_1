import 'package:flutter/material.dart';
import '../../../core/global_component/ButtonComponent.dart';
import '../../../core/constants/string_constants.dart';

class SkipButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const SkipButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonComponent(
      text: StringConstants.skip,
      onPressed: onPressed,
      isPrimary: false,
    );
  }
}