import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  SplashScreenView({Key? key}) : super(key: key);

  @override
  SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {

    return Obx(()=>
       Text(
        "LOGO",
        style: TextStyle(
            color:controller.isTransition.value == false ? Colors.grey.shade400 : Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 1),
      ),
    );
  }
}
