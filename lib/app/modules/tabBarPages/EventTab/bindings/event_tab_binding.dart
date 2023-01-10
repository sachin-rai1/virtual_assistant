import 'package:get/get.dart';

import '../controllers/event_tab_controller.dart';

class EventTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventTabController>(
      () => EventTabController(),
    );
  }
}
