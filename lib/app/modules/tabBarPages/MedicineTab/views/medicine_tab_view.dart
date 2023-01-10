import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/medicine_tab_controller.dart';

class MedicineTabView extends GetView<MedicineTabController> {
  const MedicineTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'MedicineTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
