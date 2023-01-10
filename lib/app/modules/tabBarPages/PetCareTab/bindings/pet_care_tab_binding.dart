import 'package:get/get.dart';

import '../controllers/pet_care_tab_controller.dart';

class PetCareTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetCareTabController>(
      () => PetCareTabController(),
    );
  }
}
