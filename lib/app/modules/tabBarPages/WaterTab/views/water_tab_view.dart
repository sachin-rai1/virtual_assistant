import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/water_tab_controller.dart';

class WaterTabView extends GetView<WaterTabController> {
  const WaterTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          'WaterTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
