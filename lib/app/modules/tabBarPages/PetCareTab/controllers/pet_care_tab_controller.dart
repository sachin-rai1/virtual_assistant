import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PetCareTabController extends GetxController {

  Rx<DateTime> selectedDate  = DateTime.now().obs;
  RxString startTime = DateFormat("hh:mm a").format(DateTime.now()).toString().obs;
  List<RxBool> isDone = [false.obs , false.obs , false.obs ,false.obs , false.obs  ];


  getDatePicker(BuildContext context) async {
    DateTime? getDateTime = await showDatePicker(
        context: context,
        initialDate: selectedDate.value,
        firstDate: DateTime(1800),
        lastDate: DateTime(2200));
    if (getDateTime != null) {
      selectedDate.value  = getDateTime;

    }
  }
  getTime({required BuildContext context}) async {
    var pickedTime = await showTimePicker(
        initialEntryMode: TimePickerEntryMode.dial,
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
