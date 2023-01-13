import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class WaterTabController extends GetxController {

  Rx<int> groupValue = 1.obs;


  var amTime = [
    "12:00 AM",
    "12:30 AM",
    "01:00 AM",
    "02:00 AM",
    "02:30 AM",
    "03:00 AM",
    "03:30 AM",
    "04:00 AM",
    "04:30 AM",
    "05:00 AM",
    "05:30 AM",
    "06:00 AM",
    "06:30 AM",
    "07:00 AM",
    "07:30 AM",
    "08:00 AM",
    "08:30 AM",
    "09:00 AM",
    "09:30 AM",
    "10:00 AM",
    "10:30 AM",
    "11:00 AM",
    "11:30 AM",
  ].obs;
  var pmTime = [
    "12:00 PM",
    "12:30 PM",
    "01:00 PM",
    "02:00 PM",
    "02:30 PM",
    "03:00 PM",
    "03:30 PM",
    "04:00 PM",
    "04:30 PM",
    "05:00 PM",
    "05:30 PM",
    "06:00 PM",
    "06:30 PM",
    "07:00 PM",
    "07:30 PM",
    "08:00 PM",
    "08:30 PM",
    "09:00 PM",
    "09:30 PM",
    "10:00 PM",
    "10:30 PM",
    "11:00 PM",
    "11:30 PM",
  ].obs;
  RxList<dynamic> isAMChecked = [].obs;
  RxList<dynamic> isPMChecked = [].obs;
  Rx<String> selectTime = "".obs;
  Rx<String> start = "".obs;
  Rx<TextEditingController> title = TextEditingController().obs;
  Rx<String>  repeat = "".obs;

  @override
  void onInit() {
    super.onInit();
    isAMChecked = RxList.filled(amTime.length, false);
    isPMChecked = RxList.filled(pmTime.length, false);
    start.value = DateFormat.jm().format(DateTime.now());
    // print(isAMChecked.value);
    // print(isPMChecked.value);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
// void increment() => count.value++;
}
