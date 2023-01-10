import 'package:get/get.dart';

import '../controllers/water_tab_controller.dart';

class WaterTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaterTabController>(
      () => WaterTabController(),
    );
  }
}
