import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  final count = 0.obs;

  RxBool isTransition = false.obs;

  @override
  void onInit() {
    _doingTransition();
    super.onInit();
  }

  _doingTransition() async {
    await Future.delayed(Duration(milliseconds: 2000));
    isTransition.value = true;
  }
}
