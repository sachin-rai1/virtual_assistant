import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class FamilyCareTabController extends GetxController {
  RxBool p = false.obs;
  RxBool m = false.obs;
  RxBool w = false.obs;
  RxBool c = false.obs;
  RxString startTime = Get.mediaQuery.alwaysUse24HourFormat
      ? DateFormat("HH:mm").format(DateTime.now()).toString().obs
      : DateFormat("hh:mm a").format(DateTime.now()).toString().obs;
  List<RxBool> positive = [false.obs, false.obs, false.obs, false.obs];

  getTime({required BuildContext context}) async {
    var pickedTime = await showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
          hour: int.parse(startTime.split(":")[0]),
          minute: int.parse(startTime.split(":")[1].split(" ")[0]),
        ));
    var formattedTime = pickedTime?.format(context);
    if (formattedTime != null) {
      startTime.value = formattedTime;
    }
  }
}
