import 'package:date_time_picker_widget/date_time_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';
import '../../../data/Constants.dart';
import '../../../data/my_flutter_app_icons.dart';
import '../../Reminders/views/reminders_view.dart';
import '../controllers/daily_tracker_controller.dart';

class DailyTrackerView extends GetView<DailyTrackerController> {
  DailyTrackerView({Key? key}) : super(key: key);

  final GlobalKey _formKey = GlobalKey();

  late String d2;

  @override
  Widget build(BuildContext context) {
    Get.put(DailyTrackerController());
    final items = List<String>.generate(3, (i) => "Item ${i + 1}").obs;
    final toDoLen = List<String>.generate(3, (i) => "Item ${i + 1}").obs;
    final appointLen = List<String>.generate(3, (i) => "Item ${i + 1}").obs;
    final expenseLen = List<String>.generate(5, (i) => "Item ${i}").obs;
    return MyScaffold(
      appToolbarHeight: h * 0.12,
      appBarAction: [
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 10),
          child: InkWell(
            onTap: () {
              Get.defaultDialog(content: _calendar(context));
            },
            child: Image.asset(
              'assets/icons/calendar.png',
            ),
          ),
        ),
      ],
      appBarBottom: PreferredSize(
        preferredSize: Size.zero,
        child: Transform.translate(
          offset: Offset(0, h * 0.025),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyElevatedButton(
                    iconData: UpperScrollBar.bell,
                    onTap: () {
                      Get.to(() => RemindersView(),
                          arguments: indexValue.value = 0);
                    },
                    text: "General"),
                MyElevatedButton(
                    iconData: UpperScrollBar.glasswater,
                    onTap: () {
                      Get.to(() => RemindersView(),
                          arguments: indexValue.value = 1);
                    },
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
              ],
            ),
          ),
        ),
      ),
      appBarTitle: Text(
        "Daily Tracker",
      ),
      body: (items.isEmpty &&
              toDoLen.isEmpty &&
              appointLen.isEmpty &&
              expenseLen.isEmpty)
          ? Center(
              child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                      text: 'You have not created any task yet',
                      style: TextStyle(
                        fontSize: 18,
                        color: secondaryColor,
                      )),
                  TextSpan(
                      text: '\n \n           click',
                      style: TextStyle(fontSize: 18, color: secondaryColor)),
                  TextSpan(
                      text: ' + ',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  TextSpan(
                      text: ' icon to',
                      style: TextStyle(fontSize: 18, color: secondaryColor)),
                  TextSpan(
                      text: ' add task ',
                      style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ],
              ),
            ))
          : Padding(
              padding: EdgeInsets.only(top: h * 0.030, bottom: h * 0.030),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    ///Daily Tracker
                    Obx(
                      () => ListView.builder(
                          padding: EdgeInsets.only(top: h * 0.015),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: items.isEmpty ? 0 : items.length + 1,
                          itemBuilder: (BuildContext context, int index) {
                            if (index == 0) {
                              return Center(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 8),
                                      decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          color: primaryColor),
                                      child: Text(
                                        "Daily Tracker",
                                        style: TextStyle(color: Colors.white),
                                      )));
                            }
                            return Dismissible(
                              direction: DismissDirection.endToStart,
                              confirmDismiss:
                                  (DismissDirection direction) async {
                                return await showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Confirm"),
                                      content: const Text(
                                          "Are you sure to delete this item?"),
                                      actions: <Widget>[
                                        MyElevatedButton(
                                          shapeBorder: RoundedRectangleBorder(),
                                          onTap: () {
                                            Get.back();
                                            items.removeAt(index - 1);
                                            Fluttertoast.showToast(
                                                msg: "deleted",
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
                                    left: w * 0.04,
                                    right: w * 0.04,
                                    top: h * 0.015),
                                child: Padding(
                                  padding: EdgeInsets.all(h * 0.02),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Daily Tracker Title $index",
                                        style: TextStyle(
                                            color: primaryColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
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


                    ///To DO List
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.only(top: h * 0.015),
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: toDoLen.isEmpty ? 0 : toDoLen.length + 1,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0) {
                                return Center(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 8),
                                        decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            color: primaryColor),
                                        child: Text(
                                          "To Do List",
                                          style: TextStyle(color: Colors.white),
                                        )));
                              }
                              return Dismissible(
                                direction: DismissDirection.endToStart,
                                confirmDismiss:
                                    (DismissDirection direction) async {
                                  return await showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Confirm"),
                                        content: const Text(
                                            "Are you sure to delete this item?"),
                                        actions: <Widget>[
                                          MyElevatedButton(
                                            shapeBorder:
                                                RoundedRectangleBorder(),
                                            onTap: () {
                                              Get.back();
                                              toDoLen.removeAt(index - 1);
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
                                                RoundedRectangleBorder(),
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
                                      left: w * 0.04,
                                      right: w * 0.04,
                                      top: h * 0.015),
                                  child: Padding(
                                    padding: EdgeInsets.all(h * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "ToDo List $index",
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                                DateFormat('dd-MM-yyyy')
                                                    .format(DateTime.now()),
                                                style: TextStyle(
                                                    color: primaryColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18)),
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

                    ///Appointment
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.only(top: h * 0.015),
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: h * 0.015),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount:
                                appointLen.isEmpty ? 0 : appointLen.length + 1,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0) {
                                return Center(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 8),
                                        decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            color: primaryColor),
                                        child: Text(
                                          "Appointment",
                                          style: TextStyle(color: Colors.white),
                                        )));
                              }
                              return Dismissible(
                                direction: DismissDirection.endToStart,
                                confirmDismiss:
                                    (DismissDirection direction) async {
                                  return await showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Confirm"),
                                        content: const Text(
                                            "Are you sure to delete this item?"),
                                        actions: <Widget>[
                                          MyElevatedButton(
                                            shapeBorder:
                                                RoundedRectangleBorder(),
                                            onTap: () {
                                              Get.back();
                                              appointLen.removeAt(index - 1);
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
                                                RoundedRectangleBorder(),
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
                                      left: w * 0.04,
                                      right: w * 0.04,
                                      top: h * 0.015),
                                  child: Padding(
                                    padding: EdgeInsets.all(h * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Appointment Title $index ",
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
                                              "${DateFormat('hh-mm a').format(DateTime.now())} - ${DateFormat('hh-mm a').format(DateTime.now())}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            )
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

                    ///Expenses
                    Obx(
                      () => Padding(
                        padding: EdgeInsets.only(top: h * 0.015),
                        child: ListView.builder(
                            padding: EdgeInsets.only(top: h * 0.015),
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount:
                                expenseLen.isEmpty ? 0 : expenseLen.length + 1,
                            itemBuilder: (BuildContext context, int index) {
                              if (index == 0) {
                                return Center(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 8),
                                        decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            color: primaryColor),
                                        child: Text(
                                          "Expense",
                                          style: TextStyle(color: Colors.white),
                                        )));
                              }
                              return Dismissible(
                                direction: DismissDirection.endToStart,
                                confirmDismiss:
                                    (DismissDirection direction) async {
                                  return await showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text("Confirm"),
                                        content: const Text(
                                            "Are you sure to delete this item?"),
                                        actions: <Widget>[
                                          MyElevatedButton(
                                            shapeBorder:
                                                RoundedRectangleBorder(),
                                            onTap: () {
                                              Get.back();
                                              expenseLen.removeAt(index - 1);
                                              Fluttertoast.showToast(
                                                  msg: " deleted",
                                                  backgroundColor:
                                                      primaryColor);
                                            },
                                            text: 'Delete',
                                            iconData: Icons.delete,
                                            iconColor: Colors.red,
                                          ),
                                          MyElevatedButton(
                                            shapeBorder:
                                                RoundedRectangleBorder(),
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
                                      left: w * 0.04,
                                      right: w * 0.04,
                                      top: h * 0.015),
                                  child: Padding(
                                    padding: EdgeInsets.all(h * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Credited",
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
                                              "Amount   ",
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
                  ],
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyElevatedButton(
                      text: "OK",
                      iconData: CupertinoIcons.add,
                      onTap: () {},
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MyElevatedButton(
                      text: "Cancel",
                      iconData: Icons.cancel,
                      onTap: () {},
                    )
                  ],
                )
              ],
              content: Column(
                children: [MyTextField(), MyTextField()],
              ));
        },
        backgroundColor: Colors.white,
        autofocus: true,
        child: Icon(
          Icons.add_circle,
          size: 50,
          color: primaryColor,
        ),
      ),
    );
  }

  _calendar(BuildContext context) {
    return Flexible(
      child: Container(
        height: h * 0.2,
        width: w,
        child: Center(
          child: DateTimePicker(
            initialSelectedDate: DateTime.now(),
            datePickerTitle: "Pick a Date",
            type: DateTimePickerType.Date,
            onDateChanged: (date) {
              d2 = DateFormat('dd-MM-yyyy').format(date);
              print(d2);
            },
          ),
        ),
      ),
    );
  }
}
