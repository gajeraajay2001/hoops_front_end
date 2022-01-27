import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetWidget<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffB25927),
        height: Get.height,
        width: Get.width,
        child: Image(
          image: AssetImage(
            "assets/logo.png",
          ),
        ),
      ),
    );
  }
}
