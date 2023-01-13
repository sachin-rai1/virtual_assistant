import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:virtual_assistant/app/data/constants.dart';
import 'package:virtual_assistant/app/modules/Appointment/views/appointment_view.dart';
import 'package:virtual_assistant/app/modules/Expenses/views/expenses_view.dart';
import 'package:virtual_assistant/app/modules/TodoList/views/todo_list_view.dart';
import '../modules/DailyTracker/views/daily_tracker_view.dart';
import '../modules/auth/LoginScreen/views/login_screen_view.dart';
import 'my_flutter_app_icons.dart';

class MyButton extends GetView {
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
      this.suffixIcon,
      this.hint,
      this.label,
      this.onTap,
      this.controller,
      this.readOnly,
      this.hintStyle,
      this.keyBoardType,
      this.focusNode,
      this.borderRadius,
      this.obSecure,
      this.height,
      this.width,
      this.validator, this.initialText, this.prefixIcon})
      : super(key: key);

  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function()? onTap;
  final String? hint;
  final String? label;
  final TextEditingController? controller;
  final bool? readOnly;
  final bool? obSecure;
  final TextStyle? hintStyle;
  final TextInputType? keyBoardType;
  final FocusNode? focusNode;
  final double? borderRadius;
  final double? height;
  final double? width;
  final String? Function(String?)? validator;
  final String? initialText;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height,
              width: width,
              child: Material(
                elevation: 0,
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
                  initialValue: initialText,
                  decoration: InputDecoration(
                      suffixIcon: suffixIcon,
                      prefixIcon: prefixIcon,
                      contentPadding: const EdgeInsets.only(left: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(borderRadius ?? 0),
                      ),
                      hintText: hint,
                      hintStyle: hintStyle),
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
                          Color(0xFF1099AE),
                          Color(0xFF55E0F6),
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
  final String text;
  final Function()? onTap;
  final IconData? iconData;
  final Color? iconColor;
  final Color? textColor;
  final OutlinedBorder? shapeBorder;
  final double? elevation;

  const MyElevatedButton(
      {Key? key,
      required this.text,
      this.onTap,
      this.iconData,
      this.iconColor,
      this.textColor,
      this.shapeBorder,
      this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ElevatedButton.icon(
        onPressed: onTap,
        label: Text(
          text,
          style: TextStyle(color: textColor ?? primaryColor),
        ),
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          shape: shapeBorder ?? StadiumBorder(),
          backgroundColor: Colors.white,
        ),
        icon: Icon(
          iconData,
          color: iconColor ?? primaryColor,
          size: 22,
        ),
      ),
    );
  }
}

class MyTabBar extends StatelessWidget {
  final int length;
  final List<Widget> bottomWidget;
  final List<Widget> tabBarWidget;
  final TabController? tabController;

  MyTabBar(
      {Key? key,
      required this.length,
      required this.tabBarWidget,
      required this.bottomWidget,
      this.tabController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25))),
          toolbarHeight: h * 0.12,
          backgroundColor: primaryColor,
          centerTitle: true,
          title: Text("General"),
          bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Transform.translate(
                offset: Offset(0, h * 0.025),
                child: TabBar(
                  labelPadding: EdgeInsets.zero,
                    onTap: (tabBar) {
                      selectedTabBar.value = tabBar;
                    },
                    indicatorColor: Colors.transparent,
                    controller: tabController,
                    tabs: bottomWidget,
                    isScrollable: true)),
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: tabBarWidget,
        ));
  }
}

class MyTabBarWidget extends StatelessWidget {
  final Color? cardColor;
  final Color borderColor;
  final Color? iconColor;
  final double? iconSize;
  final double? fontSize;
  final Color? fontColor;
  final IconData? icon;
  final String? text;

  const MyTabBarWidget(
      {Key? key,
      this.cardColor,
      required this.borderColor,
      this.iconColor,
      this.iconSize,
      this.fontSize,
      this.fontColor,
      this.icon,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(
          side: BorderSide(
        width: 1,
        color: borderColor,
      )),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 10,
          bottom: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text ?? "",
              style: TextStyle(
                fontSize: fontSize,
                color: fontColor,
              ),
            )
          ],
        ),
      ),
    );
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

  const MyScaffold({
    Key? key,
    this.body,
    this.floatingActionButton,
    this.appBarTitle,
    this.appBarShapeBorder,
    this.appBarBottom,
    this.appBarAction,
    this.appToolbarHeight,
  }) : super(key: key);

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
        toolbarHeight: appToolbarHeight ?? h * 0.1,
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

class MyAppBar extends StatelessWidget {
  final Widget? child;

  const MyAppBar({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          width: w,
          height: 40,
          color: Colors.transparent,
        ),
        Container(
          width: w,
          height: 30,
          color: Colors.transparent,
        ),
        Container(
          width: w,
          height: 20,
          color: Colors.blue,
        ),
        Positioned(
            bottom: 13,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(onTap: () {}, child: Text("Hii")),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(onTap: () {}, child: Text("Sachin")),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(onTap: () {}, child: Text("How")),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(onTap: () {}, child: Text("Are")),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(onTap: () {}, child: Text("You")),
                  SizedBox(
                    width: 100,
                  ),
                  InkWell(onTap: () {}, child: Text("Bro")),
                  SizedBox(
                    width: 100,
                  ),
                ],
              ),
            ))
      ],
    );
  }
}

class ReadOnly extends StatelessWidget {
 final Function() onTap;
 final String controller;
 final Icon icons;

  ReadOnly({Key? key, required this.controller, required this.onTap, required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            )),
        height: 40,
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 4.0,),
                child: icons,
              ),
              Text(
                controller,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}