import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:virtual_assistant/app/data/Constants.dart';
import 'package:virtual_assistant/app/modules/Appointment/views/appointment_view.dart';
import 'package:virtual_assistant/app/modules/Expenses/views/expenses_view.dart';
import 'package:virtual_assistant/app/modules/TodoList/views/todo_list_view.dart';
import '../modules/DailyTracker/views/daily_tracker_view.dart';
import '../modules/RegisterUser/views/register_user_view.dart';
import '../modules/auth/LoginScreen/views/login_screen_view.dart';
import 'my_flutter_app_icons.dart';

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.onTap,
      required this.label,
      this.circularInt,
      this.height,
      this.width,
      this.color,
      this.iconData,
      this.textAlign,
      this.fontColor,
      this.gradient})
      : super(key: key);

  final VoidCallback? onTap;
  final String label;
  final double? circularInt;
  final double? height;
  final double? width;
  final Color? color;
  final IconData? iconData;

  final TextAlign? textAlign;
  final Color? fontColor;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: (circularInt == null)
              ? BorderRadius.circular(0)
              : BorderRadius.circular(circularInt!),
          color: (color == null) ? primaryColor : color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              textAlign: textAlign,
              style: TextStyle(color: fontColor),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField(
      {Key? key,
      this.widget,
      this.hint,
      this.label,
      this.onTap,
      this.controller,
      this.readOnly,
      this.hintstyle,
      this.keyBoardType,
      this.focusNode,
      this.borderRadius,
      this.obSecure,
      this.height,
      this.width,
      this.validator})
      : super(key: key);

  final Widget? widget;
  final Function()? onTap;
  final String? hint;
  final String? label;
  final TextEditingController? controller;
  final bool? readOnly;
  final bool? obSecure;
  final TextStyle? hintstyle;
  final TextInputType? keyBoardType;
  final FocusNode? focusNode;
  final double? borderRadius;
  final double? height;
  final double? width;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // (label == null) ? const Text("") : Text(label!),
            // SizedBox(
            //   height: (label == null) ? 0 : 5,
            // ),
            SizedBox(
              height: height,
              width: width,
              child: Material(
                elevation: 5,
                shadowColor: Colors.white,
                color: Colors.white,
                child: TextFormField(
                  validator: validator,
                  focusNode: focusNode,
                  keyboardType: keyBoardType,
                  controller: controller,
                  onTap: onTap,
                  readOnly: readOnly ?? false,
                  obscureText: obSecure ?? false,
                  decoration: InputDecoration(
                      suffixIcon: widget,
                      contentPadding: const EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(borderRadius??0),
                      ),
                      hintText: hint,
                      hintStyle: hintstyle),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ));
  }
}

class MyListTile extends StatelessWidget {
  final Function()? onTap;
  final IconData? icon;
  final String? title;
  final String? imageString;
  final double? iconSize;

  const MyListTile(
      {Key? key,
      this.onTap,
      this.icon,
      this.title,
      this.imageString,
      this.iconSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: icon == null
          ? Image.asset(
              "assets/icons/$imageString",
              color: primaryColor,
              height: 26,
            )
          : Icon(
              icon,
              color: primaryColor,
              size: iconSize ?? 28,
            ),
      title: Text(title!),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                child: Image.asset(
                  'assets/icons/google.png',
                  height: h * 0.08,
                ),
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
                  title: 'Profile',
                  icon: DrawerIcon.profile,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Calendar Notes',
                  icon: DrawerIcon.appointment1,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Individual Tracker',
                  icon: DrawerIcon.individualtracker,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Diary',
                  icon: DrawerIcon.diary,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Daily Reminder',
                  icon: DrawerIcon.appointment2,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'My Bank Details',
                  icon: DrawerIcon.passbook,
                  onTap: () {
                    /*Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => shufflerBuilder()));*/
                  },
                ),
                MyListTile(
                  title: 'Important Days',
                  icon: DrawerIcon.appointment3,
                  onTap: () {
                    /* Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => mistakePage()));*/
                  },
                ),
                MyListTile(
                  title: 'Timer',
                  icon: DrawerIcon.timer,
                  onTap: () {
                    /*Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => importantLinks()));*/
                  },
                ),
                MyListTile(
                  title: 'Notes',
                  icon: DrawerIcon.notes,
                  onTap: () {},
                ),
                MyListTile(
                  title: 'Calculator',
                  icon: DrawerIcon.calculator,
                  onTap: () {
                    /*Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => shufflerBuilder()));*/
                  },
                ),
                MyListTile(
                  title: 'Language Selection',
                  icon: DrawerIcon.language,
                  onTap: () {
                    /* Navigator.pop(context);
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => mistakePage()));*/
                  },
                ),
                MyListTile(
                  title: 'Share & Rate Us',
                  icon: DrawerIcon.rating,
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
                      MyButton(
                        gradient: LinearGradient(colors: [
                          Color(0xFFFF8855),
                          Color(0xFFF4A242),
                        ]),
                        fontColor: Colors.white,
                        onTap: () {
                          Get.offAll(() => LoginScreenView());
                        },
                        label: "Logout",
                        color: primaryColor,
                        height: h * 0.06,
                      )
                    ],
                  ))),
        ],
      ),
    );
  }
}

class MyBottomNavigation extends StatelessWidget {
  MyBottomNavigation({Key? key}) : super(key: key);
  final RxInt selected = 1.obs;
  final _controller = PersistentTabController(
    initialIndex: 0,
  );

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          title: "Daily Tracker",
          iconSize: 25,
          icon: Icon(BottomNavIcon.tracker),
          activeColorPrimary: (drawerClicked.value == false)
              ? primaryColor
              : Colors.transparent,
          inactiveColorPrimary: secondaryColor),
      PersistentBottomNavBarItem(
        iconSize: 25,
        title: "Todo List",
        icon: Icon(
          BottomNavIcon.todo,
        ),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: secondaryColor,
      ),
      PersistentBottomNavBarItem(
        iconSize: 25,
        title: "Appointment",
        icon: Icon(BottomNavIcon.appointment),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: secondaryColor,
      ),
      PersistentBottomNavBarItem(
        title: "Wallet",
        iconSize: 25,
        icon: Icon(BottomNavIcon.wallet),
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: secondaryColor,
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      DailyTrackerView(),
      TodoListView(),
      AppointmentView(),
      ExpensesView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => PersistentTabView(
        context,
        controller: _controller,
        items: _navBarsItems(),
        hideNavigationBar: drawerClicked.value,
        navBarStyle: NavBarStyle.style3,
        onItemSelected: (value) {
          switch (value) {
            case 0:
              selected.value = 1;
              print(selected);
              print("1 selected");
              break;
            case 1:
              selected.value = 2;
              print(" 2 selected");
              break;
            case 2:
              selected.value = 3;
              print(" 3 selected");
              break;
            case 3:
              selected.value = 4;
              print("4  selected");
          }
        },
        screens: _buildScreens(),
        decoration: NavBarDecoration(
            boxShadow: [
              BoxShadow(
                color: secondaryColor,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 6.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: secondaryColor,
                offset: const Offset(5.0, 5.0),
                blurRadius: 6.0,
                spreadRadius: 0.0,
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  final String? text;
  final Function()? onTap;
  final IconData? iconData;

  const MyElevatedButton({Key? key, this.text, this.onTap, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ElevatedButton.icon(
        onPressed: onTap,
        label: Text(
          text!,
          style: TextStyle(color: primaryColor),
        ),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: Colors.white,
        ),
        icon: Icon(
          iconData,
          color: primaryColor,
          size: 22,
        ),
      ),
    );
  }
}

class MyTabBar extends StatelessWidget {
  final int length;
  final List<Widget> widget;
  final List<Widget> tabBarWidget;

  MyTabBar(
      {Key? key,
      required this.length,
      required this.widget,
      required this.tabBarWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: indexValue.value,
        length: length,
        child: Scaffold(
            appBar: AppBar(
              title: Text("General"),
              bottom: TabBar(tabs: widget),
            ),
            body: TabBarView(
              children: tabBarWidget,
            )));
  }
}

class MyScaffold extends StatelessWidget {
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? appBarTitle;
  final ShapeBorder? appBarShapeBorder;
  final PreferredSizeWidget? appBarBottom;
  final List<Widget>? appBarAction;
  final double? appToolbarHeight;

  const MyScaffold(
      {Key? key,
      this.body,
      this.floatingActionButton,
      this.appBarTitle,
      this.appBarShapeBorder,
      this.appBarBottom, this.appBarAction, this.appToolbarHeight, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      onDrawerChanged: (isOpen) {
        drawerClicked.value = isOpen;
      },
      resizeToAvoidBottomInset: true,
      appBar: AppBar(

        shape: appBarShapeBorder ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
        toolbarHeight:appToolbarHeight?? h * 0.1,
        actions: appBarAction,
        elevation: 0,
        shadowColor: primaryColor,
        backgroundColor: primaryColor,
        title: appBarTitle,
        primary: false,
        centerTitle: true,
        bottom: appBarBottom,
      ),
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
