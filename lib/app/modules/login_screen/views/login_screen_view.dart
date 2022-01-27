import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:hoops/Utilities/math_utils.dart';
import 'package:hoops/app/routes/app_pages.dart';
import 'package:hoops/constant/constants.dart';

import '../controllers/login_screen_controller.dart';

class LoginScreenView extends GetView<LoginScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          padding: EdgeInsets.symmetric(horizontal: getSize(15, context)),
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9), BlendMode.dstATop),
                image: AssetImage("assets/backPhoto.jpg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 3),
              Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset("assets/hoopsLogo.svg")),
              Spacer(flex: 6),
              Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.white, fontSize: getFontSize(30, context)),
              ),
              SizedBox(height: getSize(20, context)),
              SizedBox(
                height: getSize(55, context),
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: "Enter Mobile Number",
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: getFontSize(16, context)),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Row(
                children: [
                  Text(
                    "By signing up, you agree to our",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: getFontSize(15, context)),
                  ),
                  Text(
                    "Term and Conditions.",
                    style: TextStyle(
                        color: ColorConstant.primaryTheme,
                        fontSize: getFontSize(15, context)),
                  ),
                ],
              ),
              SizedBox(height: getSize(15, context)),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.ADD_PROFILE_SCREEN);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  height: getSize(50, context),
                  width: Get.width,
                  child: Text(
                    "Continue",
                    style: TextStyle(
                        color: ColorConstant.primaryTheme,
                        fontSize: getFontSize(20, context)),
                  ),
                ),
              ),
              Spacer(flex: 1),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: getSize(10, context)),
                  Text(
                    "OR",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(width: getSize(10, context)),
                  Expanded(
                    child: Divider(color: Colors.grey),
                  ),
                ],
              ),
              Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      height: getSize(45, context),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Image.asset("assets/appleIcon.png"),
                            height: getSize(20, context),
                            width: getSize(20, context),
                          ),
                          SizedBox(width: getSize(10, context)),
                          Container(
                            child: Text(
                              "Apple Sign In",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: getSize(20, context)),
                  Expanded(
                    child: Container(
                      height: getSize(45, context),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.white30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: SvgPicture.asset("assets/facebook.svg"),
                            height: getSize(20, context),
                            width: getSize(20, context),
                          ),
                          SizedBox(width: getSize(10, context)),
                          Container(
                            child: Text(
                              "Facebook Sign In",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}