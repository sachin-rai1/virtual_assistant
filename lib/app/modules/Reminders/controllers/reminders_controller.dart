import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/constants.dart';
import '../../../data/widgets.dart';
import '../../../data/my_flutter_app_icons.dart';

class RemindersController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController tabcontroller;
  static RxInt selectedIndex = indexValue;


  static double iconSize = 20;
  static double fontSize = 14;

  final List<Tab> myTabs = <Tab>[
    Tab(
        child: Obx(() => MyTabBarWidget(
              borderColor:
                  selectedIndex.value == 0? Colors.white : Colors.transparent,
          fontSize: fontSize,
          icon: UpperScrollBar.bell,
          text: "General",
          iconColor: selectedIndex.value == 0 ? Colors.white : primaryColor,
          iconSize: iconSize,
          fontColor: selectedIndex.value == 0 ? Colors.white : primaryColor,
          cardColor: selectedIndex.value == 0 ? primaryColor :Colors.white,
            ))),
    Tab(
        child: Obx(() => MyTabBarWidget(
          borderColor:
          selectedIndex.value == 1 ? Colors.white : Colors.transparent,
          fontSize: fontSize,
          icon: UpperScrollBar.glasswater,
          text: "Water",
          iconColor: selectedIndex.value == 1 ? Colors.white : primaryColor,
          iconSize: iconSize,
          fontColor: selectedIndex.value == 1 ? Colors.white : primaryColor,
          cardColor: selectedIndex.value == 1 ? primaryColor :Colors.white,
        ))),
    Tab(
        child: Obx(() => MyTabBarWidget(
          borderColor:
          selectedIndex.value == 2 ? Colors.white : Colors.transparent,
          fontSize: fontSize,
          icon: UpperScrollBar.phone,
          text: "Call",
          iconColor: selectedIndex.value == 2 ? Colors.white : primaryColor,
          iconSize: iconSize,
          fontColor: selectedIndex.value == 2 ? Colors.white : primaryColor,
          cardColor: selectedIndex.value == 2 ? primaryColor :Colors.white,
        ))),
    Tab(
      child: Obx(() => MyTabBarWidget(
        borderColor:
        selectedIndex.value == 3 ? Colors.white : Colors.transparent,
        fontSize: fontSize,
        icon: UpperScrollBar.event,
        text: "Event",
        iconColor: selectedIndex.value == 3 ? Colors.white : primaryColor,
        iconSize: iconSize,
        fontColor: selectedIndex.value == 3 ? Colors.white : primaryColor,
        cardColor: selectedIndex.value == 3 ? primaryColor :Colors.white,
      ))
    ),
    Tab(
        child: Obx(() => MyTabBarWidget(
          borderColor:
          selectedIndex.value == 4 ? Colors.white : Colors.transparent,
          fontSize: fontSize,
          icon: UpperScrollBar.billline,
          text: "Bill",
          iconColor: selectedIndex.value == 4 ? Colors.white : primaryColor,
          iconSize: iconSize,
          fontColor: selectedIndex.value == 4 ? Colors.white : primaryColor,
          cardColor: selectedIndex.value == 4 ? primaryColor :Colors.white,
        ))),
    Tab(
        child: Obx(() => MyTabBarWidget(
          borderColor:
          selectedIndex.value == 5 ? Colors.white : Colors.transparent,
          fontSize: fontSize,
          icon: UpperScrollBar.medicine_bottle,
          text: "Medicine",
          iconColor: selectedIndex.value == 5 ? Colors.white : primaryColor,
          iconSize: iconSize,
          fontColor: selectedIndex.value == 5 ? Colors.white : primaryColor,
          cardColor: selectedIndex.value == 5 ? primaryColor :Colors.white,
        ))),
    Tab(
      child: Obx(() => MyTabBarWidget(
        borderColor:
        selectedIndex.value == 6 ? Colors.white : Colors.transparent,
        fontSize: fontSize,
        icon: UpperScrollBar.shopping,
        text: "Shopping",
        iconColor: selectedIndex.value == 6 ? Colors.white : primaryColor,
        iconSize: iconSize,
        fontColor: selectedIndex.value == 6 ? Colors.white : primaryColor,
        cardColor: selectedIndex.value == 6 ? primaryColor :Colors.white,
      )),
    ),
    Tab(
      child: Obx(() => MyTabBarWidget(
        borderColor:
        selectedIndex.value == 7 ? Colors.white : Colors.transparent,
        fontSize: fontSize,
        icon: UpperScrollBar.todo,
        text: "Things Todo",
        iconColor: selectedIndex.value == 7 ? Colors.white : primaryColor,
        iconSize: iconSize,
        fontColor: selectedIndex.value == 7 ? Colors.white : primaryColor,
        cardColor: selectedIndex.value == 7 ? primaryColor :Colors.white,
      )),
    ),
    Tab(
      child: Obx(() => MyTabBarWidget(
        borderColor:
        selectedIndex.value == 8 ? Colors.white : Colors.transparent,
        fontSize: fontSize,
        icon: UpperScrollBar.nightlife,
        text: "Life Style",
        iconColor: selectedIndex.value == 8 ? Colors.white : primaryColor,
        iconSize: iconSize,
        fontColor: selectedIndex.value == 8 ? Colors.white : primaryColor,
        cardColor: selectedIndex.value == 8 ? primaryColor :Colors.white,
      )),
    ),
    Tab(
        child: Obx(() => MyTabBarWidget(
          borderColor:
          selectedIndex.value == 9 ? Colors.white : Colors.transparent,
          fontSize: fontSize,
          icon: UpperScrollBar.pets,
          text: "Pet Care",
          iconColor: selectedIndex.value == 9 ? Colors.white : primaryColor,
          iconSize: iconSize,
          fontColor: selectedIndex.value == 9 ? Colors.white : primaryColor,
          cardColor: selectedIndex.value == 9 ? primaryColor :Colors.white,
        ))),
    Tab(
      child: Obx(() => MyTabBarWidget(
        borderColor:
        selectedIndex.value == 10 ? Colors.white : Colors.transparent,
        fontSize: fontSize,
        icon: UpperScrollBar.family,
        text: "Family Care",
        iconColor: selectedIndex.value == 10 ? Colors.white : primaryColor,
        iconSize: iconSize,
        fontColor: selectedIndex.value == 10 ? Colors.white : primaryColor,
        cardColor: selectedIndex.value == 10 ? primaryColor :Colors.white,
      )),
    ),
  ];

  @override
  void onInit() {
    super.onInit();
    tabcontroller = TabController(
        vsync: this, length: myTabs.length, initialIndex: indexValue.value);
    tabcontroller.addListener(() {
      selectedIndex.value = tabcontroller.index;

      print("Selecting Index");
      print("Selected Index: ${tabcontroller.index}");
    });
  }

  @override
  void onClose() {
    tabcontroller.dispose();
    super.onClose();
  }
}
