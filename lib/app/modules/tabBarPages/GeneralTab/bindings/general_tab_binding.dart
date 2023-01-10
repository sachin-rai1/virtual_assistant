import 'package:get/get.dart';

import '../controllers/general_tab_controller.dart';

class GeneralTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneralTabController>(
      () => GeneralTabController(),
    );
  }
}
