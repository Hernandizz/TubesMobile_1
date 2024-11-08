import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/route_utils.dart';
import '../constants/color_constants.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cooking App',
      theme: ThemeData(
        primaryColor: ColorConstants.primary,
        scaffoldBackgroundColor: ColorConstants.background,
      ),
      initialRoute: '/onboarding',
      getPages: RouteUtils.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}