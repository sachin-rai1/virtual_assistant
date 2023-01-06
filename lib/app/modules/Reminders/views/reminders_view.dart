import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';
import 'package:virtual_assistant/app/data/my_flutter_app_icons.dart';
import '../controllers/reminders_controller.dart';

class RemindersView extends GetView<RemindersController> {
  const RemindersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyTabBar(length: 11, widget: <Widget>[
      MyElevatedButton(
          iconData: UpperScrollBar.bell,
          // onTap: () {
          //   Get.to(() => RemindersView(),
          //       arguments: indexValue.value = 0);
          // },
          text: "General"),
      MyElevatedButton(
          iconData: UpperScrollBar.glasswater,
          // onTap: () {
          //   Get.to(() => RemindersView(),
          //       arguments: indexValue.value = 1);
          // },
          text: "Water"),
      MyElevatedButton(
        onTap: () {},
        text: "Call",
        iconData: UpperScrollBar.phone,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Event",
        iconData: UpperScrollBar.event,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Bills",
        iconData: UpperScrollBar.billline,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Medicine",
        iconData: UpperScrollBar.medicine_bottle,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Shopping",
        iconData: UpperScrollBar.shopping,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Things Todo",
        iconData: UpperScrollBar.todo,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Pet Care",
        iconData: UpperScrollBar.pets,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Family Care",
        iconData: UpperScrollBar.family,
      ),
    ], tabBarWidget: <Widget>[
      MyElevatedButton(
          iconData: UpperScrollBar.bell,
          // onTap: () {
          //   Get.to(() => RemindersView(),
          //       arguments: indexValue.value = 0);
          // },
          text: "General"),
      MyElevatedButton(
          iconData: UpperScrollBar.glasswater,
          // onTap: () {
          //   Get.to(() => RemindersView(),
          //       arguments: indexValue.value = 1);
          // },
          text: "Water"),
      MyElevatedButton(
        onTap: () {},
        text: "Call",
        iconData: UpperScrollBar.phone,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Event",
        iconData: UpperScrollBar.event,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Bills",
        iconData: UpperScrollBar.billline,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Medicine",
        iconData: UpperScrollBar.medicine_bottle,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Shopping",
        iconData: UpperScrollBar.shopping,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Things Todo",
        iconData: UpperScrollBar.todo,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Pet Care",
        iconData: UpperScrollBar.pets,
      ),
      MyElevatedButton(
        onTap: () {},
        text: "Family Care",
        iconData: UpperScrollBar.family,
      ),
    ]);
  }
}
