import 'package:get/get.dart';

import '../controllers/show_events_controller.dart';

class ShowEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShowEventsController>(
      () => ShowEventsController(),
    );
  }
}
