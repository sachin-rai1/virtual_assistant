import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';
import '../../../data/Constants.dart';
import '../../Reminders/views/reminders_view.dart';
import '../controllers/daily_tracker_controller.dart';

RxBool drawerClicked = false.obs;

class DailyTrackerView extends GetView<DailyTrackerController> {
  const DailyTrackerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      onDrawerChanged: (isOpen) {
        drawerClicked.value = isOpen;
      },
      appBar: AppBar(
        actions: [
          Image.asset('assets/icons/calendar.png'),
        ],
        elevation: 0,
        // bottom: PreferredSize(
        //   preferredSize: Size(10 , 50),
        //   child: SingleChildScrollView(
        //     physics:BouncingScrollPhysics(),
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //         MyElevatedButton(onTap: () {}, text: "Test"),
        //       ],
        //     ),
        //   ),
        // ),
        backgroundColor: primaryColor,
        title: const Text('Daily Tracker'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyElevatedButton(
                onTap: () {
                  Get.to(() => RemindersView(),
                      arguments: indexValue.value = 0);
                },
                text: "Test"),
            MyElevatedButton(
                onTap: () {
                  Get.to(() => RemindersView(),
                      arguments: indexValue.value = 1);
                },
                text: "Test"),
            MyElevatedButton(onTap: () {}, text: "Test"),
            MyElevatedButton(onTap: () {}, text: "Test"),
            MyElevatedButton(onTap: () {}, text: "Test"),
            MyElevatedButton(onTap: () {}, text: "Test"),
            MyElevatedButton(onTap: () {}, text: "Test"),
            MyElevatedButton(onTap: () {}, text: "Test"),
            MyElevatedButton(onTap: () {}, text: "Test"),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          // Get.toNamed("SwitchUser");
        },
        child: Padding(
          padding: EdgeInsets.only(right: 10, bottom: h * 0.025),
          child: SpeedDial(
            animatedIcon: AnimatedIcons.add_event,
            animatedIconTheme:
                IconThemeData(color: primaryColor, size: h * 0.05),
            direction: SpeedDialDirection.up,
            backgroundColor: Colors.transparent,
            elevation: 0,
            children: [
              SpeedDialChild(
                child: Icon(Icons.switch_account_outlined, color: primaryColor),
                backgroundColor: secondaryColor,
                onTap: () {},
                label: 'Switch User',
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, color: primaryColor),
                labelBackgroundColor: secondaryColor,
              ),
              SpeedDialChild(
                child: Icon(Icons.person_add_alt_1, color: primaryColor),
                backgroundColor: secondaryColor,
                onTap: () {},
                label: 'Add User',
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, color: primaryColor),
                labelBackgroundColor: secondaryColor,
              ),
              SpeedDialChild(
                child: Icon(Icons.switch_account_outlined, color: primaryColor),
                backgroundColor: secondaryColor,
                onTap: () {},
                label: 'Switch User',
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, color: primaryColor),
                labelBackgroundColor: secondaryColor,
              ),
              SpeedDialChild(
                child: Icon(Icons.person_add_alt_1, color: primaryColor),
                backgroundColor: secondaryColor,
                onTap: () {},
                label: 'Add User',
                labelStyle:
                    TextStyle(fontWeight: FontWeight.w500, color: primaryColor),
                labelBackgroundColor: secondaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
