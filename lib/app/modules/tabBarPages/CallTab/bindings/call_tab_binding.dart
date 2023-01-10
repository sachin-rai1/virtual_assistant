import 'package:get/get.dart';

import '../controllers/call_tab_controller.dart';

class CallTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CallTabController>(
      () => CallTabController(),
    );
  }
}
