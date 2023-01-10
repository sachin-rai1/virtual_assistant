import 'package:get/get.dart';

import '../controllers/things_to_do_tab_controller.dart';

class ThingsToDoTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThingsToDoTabController>(
      () => ThingsToDoTabController(),
    );
  }
}
