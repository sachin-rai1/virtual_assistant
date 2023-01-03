import 'package:get/get.dart';

import '../modules/RegisterUser/bindings/register_user_binding.dart';
import '../modules/RegisterUser/views/register_user_view.dart';
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
  ];
}
