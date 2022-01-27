import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hoops/Utilities/math_utils.dart';
import 'package:hoops/Utilities/utilities.dart';

import '../controllers/privacy_tab_view_controller.dart';

class PrivacyTabViewView extends GetView<PrivacyTabViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            Spacer(),
            Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getSize(100, context)),
                child: submitButton(context: context, title: "Log Out")),
            SizedBox(height: getSize(30, context)),
          ],
        ),
      ),
    );
  }
}
