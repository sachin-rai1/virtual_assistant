import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/widgets.dart';

import '../../../../data/constants.dart';
import '../controllers/water_tab_controller.dart';

class WaterTabView extends GetView<WaterTabController> {
  WaterTabController waterController = Get.put(WaterTabController());

  bool status = false;

  Future<void> displayTimeDialog(BuildContext context, String position) async {
    final TimeOfDay? time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time != null) {
      waterController.selectTime.value = time.format(context);
      print("selectedTime");
      print(waterController.selectTime.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: GetBuilder<WaterTabController>(
            builder: (_) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Check the time you want Reminder',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: w / 2,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: waterController.amTime.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8.0, top: 8.0, left: 26),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: primaryColor,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.white,
                                      child: Checkbox(
                                        shape: CircleBorder(),
                                        checkColor: primaryColor,
                                        fillColor: MaterialStatePropertyAll(
                                            primaryColor),
                                        value:
                                            waterController.isAMChecked[index],
                                        onChanged: (val) {
                                          // setState(
                                          //   () {
                                          print("clicked");
                                          waterController.isAMChecked[index] =
                                              val;
                                          waterController.update();
                                          // },
                                          // );
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(waterController.amTime[index],
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: w / 2,
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: waterController.pmTime.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8.0, top: 8.0, left: 26),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 12,
                                    backgroundColor: primaryColor,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.white,
                                      child: Checkbox(
                                        shape: CircleBorder(),
                                        checkColor: primaryColor,
                                        fillColor: MaterialStatePropertyAll(
                                            primaryColor),
                                        value: waterController.isPMChecked[index],
                                        onChanged: (val) {
                                          // setState(
                                          //   () {
                                          print("clicked");
                                          waterController.isPMChecked[index] =
                                              val;
                                          waterController.update();
                                          // },
                                          // );
                                        },
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(waterController.pmTime[index],
                                        style: TextStyle(fontSize: 16)),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
          onPressed: () => addWater(context),
          backgroundColor: primaryColor,
          child: Icon(Icons.add, size: 40)),
    );
  }

  addWater(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Widget addButton = ElevatedButton(
      child: Text("  Set Reminder  "),
      onPressed: () {
        // appointmentsController.addAppointment();
      },
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(primaryColor)),
    );
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: GetX<WaterTabController>(builder: (controller) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: ReadOnly(
                icons: Icon(Icons.access_time, color: primaryColor, size: 18),
                controller: waterController.start.value,
                onTap: () => displayTimeDialog(context, "start"),
              ),
            ),
            SizedBox(height: 10),
            MyTextField(
              controller: waterController.title.value,
              hint: "Add Title",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _myRadioButton(
                    title: "Repeat Once",
                    value: 0,
                    onChanged: (newValue) {
                      waterController.groupValue.value = newValue!;
                    }),
                _myRadioButton(
                  title: "Repeat Daily",
                  value: 1,
                  onChanged: (newValue) {
                    waterController.groupValue.value = newValue!;
                  },
                ),
              ],
            ),
          ],
        );
      }),
      actions: [
        addButton,
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Widget _myRadioButton({required String title, required int value, required Function(int?) onChanged}) {
    return Container(
      width: w /3,
      child: RadioListTile(
        value: value,
        groupValue: waterController.groupValue.value,
        onChanged: onChanged,
        title: Text(title , style: TextStyle(fontSize: 14),),
      ),
    );
  }
}
