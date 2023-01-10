import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/event_tab_controller.dart';

class EventTabView extends GetView<EventTabController> {
  const EventTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Text(
          'EventTabView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
