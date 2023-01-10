import 'package:get/get.dart';

import '../controllers/shopping_tab_controller.dart';

class ShoppingTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShoppingTabController>(
      () => ShoppingTabController(),
    );
  }
}
