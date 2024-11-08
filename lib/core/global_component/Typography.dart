import 'package:flutter/material.dart';
import '../constants/color_constants.dart';

class AppTypography {
  static const TextStyle heading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorConstants.textDark,
  );

  static const TextStyle body = TextStyle(
    fontSize: 14,
    color: ColorConstants.textLight,
    height: 1.5,
  );
}