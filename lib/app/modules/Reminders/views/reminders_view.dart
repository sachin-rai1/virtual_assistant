import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Constants.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';
import '../controllers/reminders_controller.dart';

class RemindersView extends GetView<RemindersController> {
  const RemindersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RemindersController());
    return MyTabBar(bottomWidget: controller.myTabs,
        tabBarWidget: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("1"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("2"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("3"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("4"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("5"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("6"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("7"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("8"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("9"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("10"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: w / 2),
            child: Text("11"),
          ),
        ], length: controller.myTabs.length);
  }
}
