import 'package:get/get.dart';

import '../controllers/bill_tab_controller.dart';

class BillTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BillTabController>(
      () => BillTabController(),
    );
  }
}
