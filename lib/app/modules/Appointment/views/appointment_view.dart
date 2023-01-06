import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/Widgets.dart';

import '../controllers/appointment_controller.dart';

class AppointmentView extends GetView<AppointmentController> {
  const AppointmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBarAction: [Container(
        height: 10,
        padding: const EdgeInsets.only(right: 10, top: 5),
        child: Image.asset(
          'assets/icons/calendar.png',
        ),
      ),],
      appBarTitle: Text("Appointment"),
    );
  }
}
