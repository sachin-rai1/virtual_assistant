import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/general_tab_controller.dart';

class GeneralTabView extends GetView<GeneralTabController> {
  const GeneralTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          'GeneralTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
