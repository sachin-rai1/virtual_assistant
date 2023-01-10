import 'package:get/get.dart';

import '../controllers/family_care_tab_controller.dart';

class FamilyCareTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FamilyCareTabController>(
      () => FamilyCareTabController(),
    );
  }
}
