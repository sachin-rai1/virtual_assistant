import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/things_to_do_tab_controller.dart';

class ThingsToDoTabView extends GetView<ThingsToDoTabController> {
  const ThingsToDoTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ThingsToDoTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
