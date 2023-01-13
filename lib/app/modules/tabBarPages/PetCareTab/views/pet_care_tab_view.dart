import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:virtual_assistant/app/data/constants.dart';

import '../../../../data/widgets.dart';
import '../controllers/pet_care_tab_controller.dart';

class PetCareTabView extends GetView<PetCareTabController> {
  const PetCareTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PetCareTabController());
    final items = List<String>.generate(5, (i) => "Item ${i + 1}").obs;
    return Scaffold(
      body: Obx(
        () => ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (BuildContext context, index) {
              return Obx(()=>
                Card(
                  margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 20, right: 20, bottom: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Pet Care Title",
                              style: TextStyle(color: controller.isDone[index].value == true ? Colors.grey:primaryColor, fontSize: 16),
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
                                            shapeBorder: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            onTap: () {
                                              Get.back();
                                              items.removeAt(index);
                                              Fluttertoast.showToast(
                                                  msg: "deleted",
                                                  backgroundColor: primaryColor);
                                            },
                                            text: 'Delete',
                                            iconData: Icons.delete,
                                            iconColor: Colors.red,
                                          ),
                                          MyElevatedButton(
                                            shapeBorder: RoundedRectangleBorder(
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
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Date : ",
                              style: TextStyle(color: controller.isDone[index].value == true ? Colors.grey:primaryColor, fontSize: 16),
                            ),
                            Text(
                              DateFormat('dd-MM-yyyy').format(DateTime.now()),
                              style: TextStyle(fontSize: 15 , color: controller.isDone[index].value == true ? Colors.grey:Colors.black,),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                                style:
                                    TextStyle(color: controller.isDone[index].value == true ? Colors.grey:primaryColor, fontSize: 16),
                                "Time :  "),
                            Text(
                                style: TextStyle(fontSize: 15 , color: controller.isDone[index].value == true ? Colors.grey:Colors.black,),
                                DateFormat('hh:mm a').format(DateTime.now())),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                                MyButton(
                                width: 110,
                                color: controller.isDone[index].value == true ? Colors.grey:primaryColor,
                                fontColor: Colors.white,
                                circularInt: 10,
                                onTap: () {
                                  controller.isDone[index].value = !controller.isDone[index].value;
                                  print(controller.isDone[index].value);
                                },
                                label: "Mark as Done",
                                height: 35,
                              ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.defaultDialog(
                title: "",
                contentPadding: EdgeInsets.zero,
                content: GetX<PetCareTabController>(builder: (controller) {
                  return Column(
                    children: [
                      MyTextField(
                        prefixIcon: Icon(
                          Icons.date_range_outlined,
                          color: primaryColor,
                        ),
                        hint: DateFormat('dd-MM-yyyy')
                            .format(controller.selectedDate.value),
                        hintStyle: TextStyle(color: Colors.black),
                        onTap: () {
                          controller.getDatePicker(context);
                          controller.update();
                        },
                        borderRadius: 10,
                        height: 40,
                        readOnly: true,
                      ),
                      MyTextField(
                        prefixIcon: Icon(
                          Icons.access_time_outlined,
                          color: primaryColor,
                        ),
                        hint: controller.startTime.value.toString(),
                        hintStyle: TextStyle(color: Colors.black),
                        onTap: () {
                          controller.getTime(context: context);
                          controller.update();
                        },
                        borderRadius: 10,
                        height: 40,
                        readOnly: true,
                      ),
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
                  );
                }));
          },
          child: Icon(
            Icons.add,
            size: 50,
          ),
          backgroundColor: primaryColor),
    );
  }
}
