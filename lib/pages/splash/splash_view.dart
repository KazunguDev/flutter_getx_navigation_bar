import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_getx_navigation_bar/pages/splash/splash_controller.dart';
import 'package:flutter_getx_navigation_bar/utils/images.dart';

class SplashView extends StatelessWidget {
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              color: Colors.white,
              child: Image.asset(
                logo_image,
                width: Get.width * 0.5,
              ))),
    );
  }
}
