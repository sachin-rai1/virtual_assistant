import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pet_care_tab_controller.dart';

class PetCareTabView extends GetView<PetCareTabController> {
  const PetCareTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'PetCareTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
