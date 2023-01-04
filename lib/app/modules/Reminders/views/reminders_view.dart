import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';
import 'package:virtual_assistant/app/data/my_flutter_app_icons.dart';

import '../controllers/reminders_controller.dart';

class RemindersView extends GetView<RemindersController> {
  const RemindersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTabBar(length: 2, widget: <Widget>[
      Column(
        children: [
          Icon(DrawerIcon.individualtracker),
          SizedBox(
            height: 10,
          ),
          Text("General"),
        ],
      ),
      Icon(DrawerIcon.individualtracker),
    ], tabBarWidget: <Widget>[
      Icon(DrawerIcon.individualtracker),
      Icon(DrawerIcon.calculator),
    ]);
  }
}
