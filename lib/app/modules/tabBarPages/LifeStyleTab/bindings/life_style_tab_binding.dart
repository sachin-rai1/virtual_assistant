import 'package:get/get.dart';

import '../controllers/life_style_tab_controller.dart';

class LifeStyleTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LifeStyleTabController>(
      () => LifeStyleTabController(),
    );
  }
}
