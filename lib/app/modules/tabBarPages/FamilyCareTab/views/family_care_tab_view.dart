import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/family_care_tab_controller.dart';

class FamilyCareTabView extends GetView<FamilyCareTabController> {
  const FamilyCareTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'FamilyCareTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
