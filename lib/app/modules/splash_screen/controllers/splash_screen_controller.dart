import 'dart:async';

import 'package:get/get.dart';
import 'package:hoops/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(
      Duration(seconds: 3),
      () => Get.toNamed(Routes.LOGIN_SCREEN),
    );
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
