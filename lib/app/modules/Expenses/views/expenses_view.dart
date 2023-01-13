import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:virtual_assistant/app/data/widgets.dart';
import '../../../data/constants.dart';
import '../controllers/expenses_controller.dart';

class ExpensesView extends GetView<ExpensesController> {
  const ExpensesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(5, (i) => "Item ${i + 1}").obs;
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
      appBarTitle: Text("Expenses"),
      body: Column(
        children: [
          Card(
            color: Color(0xFFF5F5F5),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                        "Credited",
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Text(
                        "Updated On",
                        style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "2000   ",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Text(
                        DateFormat('dd-MM-yyyy').format(DateTime.now()),
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () => Padding(
                padding: EdgeInsets.only(bottom: h * 0.025),
                child: ListView.builder(
                    padding: EdgeInsets.only(top: h * 0.015),
                    physics: BouncingScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Dismissible(
                        background: Container(
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Icon(Icons.favorite, color: Colors.white),
                                Text('Move to favorites',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        secondaryBackground: Container(
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.delete, color: Colors.white),
                                Text('Move to trash',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                        confirmDismiss: (DismissDirection direction) async {
                          return await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text("Confirm"),
                                content: (direction ==
                                        DismissDirection.startToEnd)
                                    ? Text("Hii")
                                    : const Text(
                                        "Are you sure to delete this item?"),
                                actions: <Widget>[
                                  MyElevatedButton(
                                    shapeBorder: RoundedRectangleBorder(),
                                    onTap: () {
                                      Get.back();
                                      items.removeAt(index);
                                      Fluttertoast.showToast(
                                          msg: "${items[index]} deleted",
                                          backgroundColor: primaryColor);
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Credited  $index",
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      DateFormat('dd-MM-yyyy')
                                          .format(DateTime.now()),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Amount ",
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "2000",
                                      style: TextStyle(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16),
                                    ),
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
            ),
          ),
        ],
      ),
    );
  }
}
