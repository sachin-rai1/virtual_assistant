import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:virtual_assistant/app/data/constants.dart';
import 'package:virtual_assistant/app/data/widgets.dart';
import 'package:virtual_assistant/app/modules/tabBarPages/GeneralTab/views/general_tab_view.dart';
import '../../tabBarPages/BillTab/views/bill_tab_view.dart';
import '../../tabBarPages/CallTab/views/call_tab_view.dart';
import '../../tabBarPages/EventTab/views/event_tab_view.dart';
import '../../tabBarPages/FamilyCareTab/views/family_care_tab_view.dart';
import '../../tabBarPages/LifeStyleTab/views/life_style_tab_view.dart';
import '../../tabBarPages/MedicineTab/views/medicine_tab_view.dart';
import '../../tabBarPages/PetCareTab/views/pet_care_tab_view.dart';
import '../../tabBarPages/ShoppingTab/views/shopping_tab_view.dart';
import '../../tabBarPages/ThingsToDoTab/views/things_to_do_tab_view.dart';
import '../../tabBarPages/WaterTab/views/water_tab_view.dart';
import '../controllers/reminders_controller.dart';

class RemindersView extends GetView<RemindersController> {
  const RemindersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(RemindersController());
    return MyTabBar(
        bottomWidget: controller.myTabs,
        tabController: controller.tabcontroller,
        tabBarWidget: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: GeneralTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: WaterTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: CallTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: EventTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: BillTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: MedicineTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: ShoppingTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25,),
            child: ThingsToDoTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: LifeStyleTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: PetCareTabView(),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: FamilyCareTabView(),
          ),
        ],
        length: controller.myTabs.length);
  }
}
