import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../data/Constants.dart';
import '../../../data/Widgets.dart';

import '../controllers/appointment_controller.dart';

class AppointmentView extends GetView<AppointmentController> {
  const AppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(20, (i) => "Item ${i + 1}").obs;

    return MyScaffold(
      appBarAction: [
        Container(
          height: 10,
          padding: const EdgeInsets.only(right: 10, top: 5),
          child: Image.asset(
            'assets/icons/calendar.png',
          ),
        ),
      ],
      appBarTitle: Text("Appointment"),
      body: Obx(()=>
         ListView.builder(
            padding: EdgeInsets.only(top: h * 0.015),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                direction: DismissDirection.endToStart,
                confirmDismiss: (DismissDirection direction) async {
                  return await showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Confirm"),
                        content: const Text("Are you sure to delete this item?"),
                        actions: <Widget>[
                          MyElevatedButton(
                            shapeBorder: RoundedRectangleBorder(),
                            onTap: () {
                              Get.back();
                              items.removeAt(index);
                              Fluttertoast.showToast(msg: "${items[index]} deleted" , backgroundColor: primaryColor);
                            },
                            text: 'Delete',
                            iconData: Icons.delete,
                            iconColor: Colors.red,
                          ),
                          MyElevatedButton(
                            shapeBorder: RoundedRectangleBorder(),
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
                key: UniqueKey(),
                child: Card(
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
                        Text(
                          "Appointment Title $index",
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "Time : ",
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18),
                            ),
                            Text(
                                "${DateFormat('hh-mm a').format(DateTime.now())} - ${DateFormat('hh-mm a').format(DateTime.now())}" , style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14),)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi."),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
