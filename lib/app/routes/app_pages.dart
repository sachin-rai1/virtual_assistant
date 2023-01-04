import 'package:get/get.dart';

import '../modules/DailyTracker/bindings/daily_tracker_binding.dart';
import '../modules/DailyTracker/bindings/daily_tracker_binding.dart';
import '../modules/DailyTracker/views/daily_tracker_view.dart';
import '../modules/DailyTracker/views/daily_tracker_view.dart';
import '../modules/RegisterUser/bindings/register_user_binding.dart';
import '../modules/RegisterUser/views/register_user_view.dart';
import '../modules/Reminders/bindings/reminders_binding.dart';
import '../modules/Reminders/views/reminders_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/auth/LoginScreen/bindings/login_screen_binding.dart';
import '../modules/auth/LoginScreen/views/login_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_USER,
      page: () => const RegisterUserView(),
      binding: RegisterUserBinding(),
    ),
    GetPage(
      name: _Paths.DAILY_TRACKER,
      page: () => const DailyTrackerView(),
      binding: DailyTrackerBinding(),
      children: [
        GetPage(
          name: _Paths.DAILY_TRACKER,
          page: () => const DailyTrackerView(),
          binding: DailyTrackerBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.REMINDERS,
      page: () => const RemindersView(),
      binding: RemindersBinding(),
    ),
  ];
}
