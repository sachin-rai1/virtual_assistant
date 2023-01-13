import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../data/constants.dart';
import '../../../../data/widgets.dart';
import '../controllers/life_style_tab_controller.dart';

class LifeStyleTabView extends GetView<LifeStyleTabController> {
  const LifeStyleTabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(LifeStyleTabController());
    final items = List<String>.generate(3, (i) => "Item ${i + 1}").obs;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.2),
              margin: EdgeInsets.only(
                  left: w * 0.04, right: w * 0.04, top: h * 0.015),
              child: Padding(
                padding: EdgeInsets.all(h * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Breakfast",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Time   : ${DateFormat(' hh:mm a').format(DateTime.now())}",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Obx(
                              () => AnimatedToggleSwitch<bool>.dual(
                            current: controller.p.value,
                            first: false,
                            second: true,
                            dif: 10,
                            indicatorColor: Colors.red,
                            height: 25,
                            indicatorSize: Size(25, 25),
                            borderWidth: 1,
                            onChanged: (checked) {
                              controller.p.value = checked;
                            },
                            colorBuilder: (b) => b ? Colors.green : Colors.grey,
                            textBuilder: (value) => value
                                ? Center(
                                child: Text(
                                  'On',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ))
                                : Center(
                                child: Text('Off',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.2),
              margin: EdgeInsets.only(
                  left: w * 0.04, right: w * 0.04, top: h * 0.015),
              child: Padding(
                padding: EdgeInsets.all(h * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lunch",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Time   : ${DateFormat(' hh:mm a').format(DateTime.now())}",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Obx(
                              () => AnimatedToggleSwitch<bool>.dual(
                            current: controller.m.value,
                            first: false,
                            second: true,
                            dif: 10,
                            indicatorColor: Colors.red,
                            height: 25,
                            indicatorSize: Size(25, 25),
                            borderWidth: 1,
                            onChanged: (checked) {
                              controller.m.value = checked;
                            },
                            colorBuilder: (b) => b ? Colors.green : Colors.grey,
                            textBuilder: (value) => value
                                ? Center(
                                child: Text(
                                  'On',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ))
                                : Center(
                                child: Text('Off',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.2),
              margin: EdgeInsets.only(
                  left: w * 0.04, right: w * 0.04, top: h * 0.015),
              child: Padding(
                padding: EdgeInsets.all(h * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dinner",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Time   : ${DateFormat(' hh:mm a').format(DateTime.now())}",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Obx(
                              () => AnimatedToggleSwitch<bool>.dual(
                            current: controller.w.value,
                            first: false,
                            second: true,
                            dif: 10,
                            indicatorColor: Colors.red,
                            height: 25,
                            indicatorSize: Size(25, 25),
                            borderWidth: 1,
                            onChanged: (checked) {
                              controller.w.value = checked;
                            },
                            colorBuilder: (b) => b ? Colors.green : Colors.grey,
                            textBuilder: (value) => value
                                ? Center(
                                child: Text(
                                  'On',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ))
                                : Center(
                                child: Text('Off',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.2),
              margin: EdgeInsets.only(
                  left: w * 0.04, right: w * 0.04, top: h * 0.015),
              child: Padding(
                padding: EdgeInsets.all(h * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Gym",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Time   : ${DateFormat(' hh:mm a').format(DateTime.now())}",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16),
                        ),
                        Obx(
                              () => AnimatedToggleSwitch<bool>.dual(
                            current: controller.c.value,
                            first: false,
                            second: true,
                            dif: 10,
                            indicatorColor: Colors.red,
                            height: 25,
                            indicatorSize: Size(25, 25),
                            borderWidth: 1,
                            onChanged: (checked) {
                              controller.c.value = checked;
                            },
                            colorBuilder: (b) => b ? Colors.green : Colors.grey,
                            textBuilder: (value) => value
                                ? Center(
                                child: Text(
                                  'On',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ))
                                : Center(
                                child: Text('Off',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Obx(
                  () => ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      shadowColor: Colors.grey.withOpacity(0.2),
                      margin: EdgeInsets.only(
                          left: w * 0.04, right: w * 0.04, top: h * 0.015),
                      child: Padding(
                        padding: EdgeInsets.all(h * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Life Style Reminder  $index",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: const Text("Confirm"),
                                            content: const Text(
                                                "Are you sure to delete this item?"),
                                            actions: <Widget>[
                                              MyElevatedButton(
                                                shapeBorder:
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                ),
                                                onTap: () {
                                                  Get.back();
                                                  items.removeAt(index);
                                                  Fluttertoast.showToast(
                                                      msg: "deleted",
                                                      backgroundColor:
                                                      primaryColor);
                                                },
                                                text: 'Delete',
                                                iconData: Icons.delete,
                                                iconColor: Colors.red,
                                              ),
                                              MyElevatedButton(
                                                shapeBorder:
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                ),
                                                iconColor: Colors.grey,
                                                iconData: Icons.cancel,
                                                text: "Cancel",
                                                onTap: () {
                                                  Get.back();
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    child: Icon(
                                      CupertinoIcons.delete,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Time   :  ${DateFormat(' hh:mm a').format(DateTime.now())}",
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                Obx(
                                      () => AnimatedToggleSwitch<bool>.dual(
                                    current: controller.positive[index].value,
                                    first: false,
                                    second: true,
                                    dif: 10,
                                    indicatorColor: Colors.red,
                                    height: 25,
                                    indicatorSize: Size(25, 25),
                                    borderWidth: 1,
                                    onChanged: (checked) {
                                      controller.positive[index].value =
                                          checked;
                                    },
                                    colorBuilder: (b) =>
                                    b ? Colors.green : Colors.grey,
                                    textBuilder: (value) => value
                                        ? Center(
                                        child: Text(
                                          'On',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ))
                                        : Center(
                                        child: Text('Off',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight:
                                                FontWeight.bold))),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.defaultDialog(
                title: "",
                contentPadding: EdgeInsets.zero,
                content: Column(
                  children: [
                    GetX<LifeStyleTabController>(builder: (controller) {
                      return MyTextField(
                        prefixIcon: Icon(Icons.access_time_outlined  , color: primaryColor,),
                        hint: controller.startTime.value,
                        hintStyle: TextStyle(color: Colors.black),
                        onTap: () {
                          controller.getTime(context: context);
                          controller.update();
                        },
                        borderRadius: 10,
                        height: 40,
                        readOnly: true,
                      );
                    }),
                    MyTextField(
                      hint: "Add title",
                      height: 40,
                      borderRadius: 10,
                    ),
                    MyButton(
                      onTap: () {},
                      label: "Set Reminder",
                      height: 40,
                      fontColor: Colors.white,
                      width: w * 0.4,
                      circularInt: 10,
                    )
                  ],
                ));
          },
          child: Icon(
            Icons.add,
            size: 50,
          ),
          backgroundColor: primaryColor),
    );
  }
}
