import 'package:flutter/cupertino.dart';
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
  const DailyTrackerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int len = 4;
    int len1 = 4;
    return Scaffold(
      drawer: MyDrawer(),
      onDrawerChanged: (isOpen) {
        drawerClicked.value = isOpen;
      },
      appBar: AppBar(
        toolbarHeight: h * 0.09,
        actions: [Image.asset('assets/icons/calendar.png'),],
        elevation: 0,

        backgroundColor: primaryColor,
        title: const Text('Daily Tracker'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: [
              Container(
                height: h * 0.033,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10) , bottomRight: Radius.circular(10)),
                  color: primaryColor,
                ),
              ),
              SingleChildScrollView(
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

            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                (len == 0)
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
                              style: TextStyle(
                                  fontSize: 18, color: secondaryColor)),
                          TextSpan(
                              text: ' + ',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          TextSpan(
                              text: ' icon to',
                              style: TextStyle(
                                  fontSize: 18, color: secondaryColor)),
                          TextSpan(
                              text: ' add task ',
                              style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                        ],
                      ),
                    ))
                    : ListView.builder(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: len,
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

                (len1 == 0)
                    ? Container()
                    : ListView.builder(
                  shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemCount: len1,
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
              ],
            ),
          ),
        ],
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
