import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Constants.dart';
import '../../../data/my_flutter_app_icons.dart';

class RemindersController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;
  int selectedIndex = 0;

  static double iconSize = 20;
  static double fontSize = 14;

  final List<Tab> myTabs = <Tab>[
    Tab(
        child: Obx(
      () => Card(
        color: selectedTabBar.value == 0 ? Colors.green : Colors.red,
        shape: StadiumBorder(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                UpperScrollBar.bell,
                color: primaryColor,
                size: iconSize,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "General",
                style: TextStyle(
                  fontSize: fontSize,
                  color: primaryColor,
                ),
              )
            ],
          ),
        ),
      ),
    )),
    Tab(
        child: Card(
      shape: StadiumBorder(),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              UpperScrollBar.glasswater,
              color: primaryColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Water",
              style: TextStyle(
                color: primaryColor,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    )),
    Tab(
        child: Card(
      shape: StadiumBorder(),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              UpperScrollBar.phone,
              color: primaryColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Phone",
              style: TextStyle(
                color: primaryColor,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    )),
    Tab(
      child: Card(
        shape: StadiumBorder(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                UpperScrollBar.event,
                color: primaryColor,
                size: iconSize,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Event",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: fontSize,
                ),
              )
            ],
          ),
        ),
      ),
    ),
    Tab(
        child: Card(
      shape: StadiumBorder(),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              UpperScrollBar.billline,
              color: primaryColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Bill",
              style: TextStyle(
                color: primaryColor,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    )),
    Tab(
        child: Card(
      shape: StadiumBorder(),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              UpperScrollBar.medicine_bottle,
              color: primaryColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Medicine",
              style: TextStyle(
                color: primaryColor,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    )),
    Tab(
      child: Card(
        shape: StadiumBorder(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                UpperScrollBar.shopping,
                color: primaryColor,
                size: iconSize,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Shopping",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: fontSize,
                ),
              )
            ],
          ),
        ),
      ),
    ),
    Tab(
      child: Card(
        shape: StadiumBorder(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                UpperScrollBar.todo,
                color: primaryColor,
                size: iconSize,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Things Todo",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: fontSize,
                ),
              )
            ],
          ),
        ),
      ),
    ),
    Tab(
      child: Card(
        shape: StadiumBorder(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                UpperScrollBar.nightlife,
                color: primaryColor,
                size: iconSize,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Life Style",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: fontSize,
                ),
              )
            ],
          ),
        ),
      ),
    ),
    Tab(
        child: Card(
      shape: StadiumBorder(),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              UpperScrollBar.pets,
              color: primaryColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Pet Care",
              style: TextStyle(
                color: primaryColor,
                fontSize: fontSize,
              ),
            )
          ],
        ),
      ),
    )),
    Tab(
      child: Card(
        shape: StadiumBorder(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                UpperScrollBar.family,
                color: primaryColor,
                size: iconSize,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Family Care",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: fontSize,
                ),
              )
            ],
          ),
        ),
      ),
    )
  ];

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length , initialIndex: selectedIndex);
    controller.animateTo(selectedIndex);

    controller.addListener(() {
      selectedIndex = controller.index;
      print("Selecting Index");
      print("Selected Index: ${controller.index}");
    });

  }
  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
