import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:http/http.dart' as http;

import '../Model/familyModel.dart';

class FamilyCareTabController extends GetxController {
  RxBool p = false.obs;
  RxBool m = false.obs;
  RxBool w = false.obs;
  RxBool c = false.obs;
  RxString selectedTime = Get.mediaQuery.alwaysUse24HourFormat
      ? DateFormat("HH:mm").format(DateTime.now()).toString().obs
      : DateFormat("hh:mm a").format(DateTime.now()).toString().obs;

  Rx<DateTime> selectedDate = DateTime.now().obs;

  var data = <AlarmModel>[].obs;

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
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
          hour: int.parse(selectedTime.split(":")[0]),
          minute: int.parse(selectedTime.split(":")[1].split(" ")[0]),
        ));
    var formattedTime = pickedTime?.format(context);
    if (formattedTime != null) {
      selectedTime.value = formattedTime;
    }
  }

 static Future<List<AlarmModel>> getApiData() async {
    final response = await http
        .get(Uri.parse('https://script.googleusercontent.com/macros/echo?user_content_key=eWGHjIbv6T3D8JwGXpHxltH7hYMtbx_5zsZzBFILd-1qL_X3wd5lfxvJGR7CHnGIb7ijDYu6OuGichO9adYDdXN1whIYeGjLm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnAN-N1qaDikJAjb4BQhE8uRXhfTAg7eGPvrIQWnTCZk_8DBgC6-YrvuQy4jTlvfPeM0ExGwenjPOyzmUl0M97gZi7UBTkGrTRA&lib=MrTydIerFOLZp8jhFcohrUQXKz5yR0Jn-'));

    if (response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      var getData = response.body;
      return alarmModelFromJson(getData);
    } else {
      throw Exception('Failed to load data');
    }
  }

   fetchData() async{
    var gettingData = await getApiData();
    data.value = gettingData;
  }

  @override
  void onInit(){
    super.onInit();
    fetchData();

  }
}
