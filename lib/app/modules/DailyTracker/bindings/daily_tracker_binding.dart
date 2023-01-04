import 'package:get/get.dart';

import '../controllers/daily_tracker_controller.dart';

class DailyTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DailyTrackerController>(
      () => DailyTrackerController(),
    );
  }
}
