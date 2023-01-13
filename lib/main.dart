import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:month_year_picker/month_year_picker.dart';
import 'package:virtual_assistant/app/modules/SplashScreen/views/splash_screen_view.dart';
import 'package:virtual_assistant/app/modules/auth/LoginScreen/views/login_screen_view.dart';
import 'app/data/notification_services.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService().init();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(
    GetMaterialApp(
      localizationsDelegates: [
        MonthYearPickerLocalizations.delegate
      ],
      debugShowCheckedModeBanner: false,
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
