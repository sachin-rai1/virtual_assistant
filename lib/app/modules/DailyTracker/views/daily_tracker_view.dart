import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';
import 'package:virtual_assistant/app/data/my_flutter_app_icons.dart';
import '../../../data/Constants.dart';
import '../../Reminders/views/reminders_view.dart';
import '../controllers/daily_tracker_controller.dart';

RxBool drawerClicked = false.obs;

class DailyTrackerView extends GetView<DailyTrackerController> {
  DailyTrackerView({Key? key}) : super(key: key);

  final GlobalKey _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    int trackLen = 10;
    int toDoLen = 10;
    int appointLen = 0;
    int expenseLen = 0;
    return MyScaffold(
      appToolbarHeight: h * 0.12,
      appBarAction: [
        Padding(
          padding: const EdgeInsets.only(right: 15, top: 10),
          child: Image.asset(
            'assets/icons/calendar.png',
          ),
        ),
      ],
      appBarBottom: PreferredSize(
        preferredSize: Size.zero,
        child: Transform.translate(
          offset: Offset(0, h * 0.025),
          child: SingleChildScrollView(
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
      body: (trackLen == 0 &&
              toDoLen == 0 &&
              appointLen == 0 &&
              expenseLen == 0)
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
                child: Column(
                  children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(top: h * 0.015),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: trackLen == 0 ? 0 : trackLen + 1,
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
                          return Card(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Daily Tracker Title ",
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
                          );
                        }),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.015),
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: toDoLen == 0 ? 0 : toDoLen + 1,
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

                            return Card(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "ToDo List ",
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
                            );
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.015),
                      child: ListView.builder(
                          padding: EdgeInsets.only(top: h * 0.015),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: appointLen == 0 ? 0 : appointLen + 1,
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
                            return Card(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Daily Tracker Title ",
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
                            );
                          }),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.015),
                      child: ListView.builder(
                          padding: EdgeInsets.only(top: h * 0.015),
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: expenseLen == 0 ? 0 : expenseLen + 1,
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
                            return Card(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Daily Tracker Title ",
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
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(
              Container(
                height: 100,
                  width: 100,
                  child: Center(child: Card(child: MyTextField()))));
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
}
