import 'package:get/get.dart';

import '../controllers/medicine_tab_controller.dart';

class MedicineTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MedicineTabController>(
      () => MedicineTabController(),
    );
  }
}
