import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/Widgets.dart';

import '../../../data/Constants.dart';
import '../controllers/daily_tracker_controller.dart';

RxBool drawerClicked = false.obs;

class DailyTrackerView extends GetView<DailyTrackerController> {
  const DailyTrackerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _myDrawer(context),
      onDrawerChanged: (isOpen) {
        drawerClicked.value = isOpen;
        print(isOpen);
      },
      appBar: AppBar(
        actions: [
          Image.asset('assets/icons/calendar.png'),
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            icon: Icon(Icons.list),
          );
        }),
        elevation: 0,
        backgroundColor: primaryColor,
        title: const Text('Daily Tracker'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Daily Tracker',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  _myDrawer(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                minRadius: w * 0.1,
              ),
              SizedBox(
                height: 20,
              ),
              Text("User Name ")
            ],
          )),
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                MyListTile(
                  title: 'Dealer',
                  icon: Icons.person,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Shuffler',
                  icon: Icons.shuffle,
                  onTap: () {
                    /*Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => shufflerBuilder()));*/
                  },
                ),
                MyListTile(
                  title: 'Mistakes',
                  icon: Icons.info_outline,
                  onTap: () {
                    /* Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => mistakePage()));*/
                  },
                ),
                MyListTile(
                  title: 'Important links',
                  icon: Icons.border_color,
                  onTap: () {
                    /*Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => importantLinks()));*/
                  },
                ),
                MyListTile(
                  title: 'Dealer',
                  icon: Icons.person,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Shuffler',
                  icon: Icons.shuffle,
                  onTap: () {
                    /*Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => shufflerBuilder()));*/
                  },
                ),
                MyListTile(
                  title: 'Mistakes',
                  icon: Icons.info_outline,
                  onTap: () {
                    /* Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => mistakePage()));*/
                  },
                ),
                MyListTile(
                  title: 'Important links',
                  icon: Icons.border_color,
                  onTap: () {
                    /*Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => importantLinks()));*/
                  },
                ),
                MyListTile(
                  title: 'Dealer',
                  icon: Icons.person,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Shuffler',
                  icon: Icons.shuffle,
                  onTap: () {
                    /*Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => shufflerBuilder()));*/
                  },
                ),
                MyListTile(
                  title: 'Mistakes',
                  icon: Icons.info_outline,
                  onTap: () {
                    /* Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => mistakePage()));*/
                  },
                ),
                MyListTile(
                  title: 'Important links',
                  icon: Icons.border_color,
                  onTap: () {
                    /*Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => importantLinks()));*/
                  },
                ),
              ]),
            ),
          ),
          Container(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Column(
                    children: <Widget>[
                      Divider(),
                      MyButton(
                        onTap: () {},
                        label: "Logout",
                        color: primaryColor,
                        height: h * 0.1,
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}
