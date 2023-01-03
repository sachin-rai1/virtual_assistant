import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/modules/SplashScreen/views/splash_screen_view.dart';
import 'package:virtual_assistant/app/modules/auth/LoginScreen/views/login_screen_view.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      home: AnimatedSplashScreen(
        splash: SplashScreenView(),
        nextScreen: LoginScreenView(),
        splashTransition: SplashTransition.decoratedBoxTransition,
      ),
      getPages: AppPages.routes,
    ),
  );
}
