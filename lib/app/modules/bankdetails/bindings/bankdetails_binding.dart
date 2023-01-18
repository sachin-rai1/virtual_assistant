import 'package:get/get.dart';

import '../controllers/bankdetails_controller.dart';

class BankdetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BankDetailsController>(
      () => BankDetailsController(),
    );
  }
}
