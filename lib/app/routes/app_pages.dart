import 'package:get/get.dart';

import '../modules/Appointment/bindings/appointment_binding.dart';
import '../modules/Appointment/views/appointment_view.dart';
import '../modules/DailyTracker/bindings/daily_tracker_binding.dart';
import '../modules/DailyTracker/views/daily_tracker_view.dart';
import '../modules/Expenses/bindings/expenses_binding.dart';
import '../modules/Expenses/views/expenses_view.dart';
import '../modules/RegisterUser/bindings/register_user_binding.dart';
import '../modules/RegisterUser/views/register_user_view.dart';
import '../modules/Reminders/bindings/reminders_binding.dart';
import '../modules/Reminders/views/reminders_view.dart';
import '../modules/SplashScreen/bindings/splash_screen_binding.dart';
import '../modules/SplashScreen/views/splash_screen_view.dart';
import '../modules/TodoList/bindings/todo_list_binding.dart';
import '../modules/TodoList/views/todo_list_view.dart';
import '../modules/auth/LoginScreen/bindings/login_screen_binding.dart';
import '../modules/auth/LoginScreen/views/login_screen_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tabBarPages/BillTab/bindings/bill_tab_binding.dart';
import '../modules/tabBarPages/BillTab/views/bill_tab_view.dart';
import '../modules/tabBarPages/CallTab/bindings/call_tab_binding.dart';
import '../modules/tabBarPages/CallTab/views/call_tab_view.dart';
import '../modules/tabBarPages/EventTab/bindings/event_tab_binding.dart';
import '../modules/tabBarPages/EventTab/views/event_tab_view.dart';
import '../modules/tabBarPages/FamilyCareTab/bindings/family_care_tab_binding.dart';
import '../modules/tabBarPages/FamilyCareTab/views/family_care_tab_view.dart';
import '../modules/tabBarPages/GeneralTab/bindings/general_tab_binding.dart';
import '../modules/tabBarPages/GeneralTab/views/general_tab_view.dart';
import '../modules/tabBarPages/LifeStyleTab/bindings/life_style_tab_binding.dart';
import '../modules/tabBarPages/LifeStyleTab/views/life_style_tab_view.dart';
import '../modules/tabBarPages/MedicineTab/bindings/medicine_tab_binding.dart';
import '../modules/tabBarPages/MedicineTab/views/medicine_tab_view.dart';
import '../modules/tabBarPages/PetCareTab/bindings/pet_care_tab_binding.dart';
import '../modules/tabBarPages/PetCareTab/views/pet_care_tab_view.dart';
import '../modules/tabBarPages/ShoppingTab/bindings/shopping_tab_binding.dart';
import '../modules/tabBarPages/ShoppingTab/views/shopping_tab_view.dart';
import '../modules/tabBarPages/ThingsToDoTab/bindings/things_to_do_tab_binding.dart';
import '../modules/tabBarPages/ThingsToDoTab/views/things_to_do_tab_view.dart';
import '../modules/tabBarPages/WaterTab/bindings/water_tab_binding.dart';
import '../modules/tabBarPages/WaterTab/views/water_tab_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.LOGIN_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_SCREEN,
      page: () => const LoginScreenView(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER_USER,
      page: () => const RegisterUserView(),
      binding: RegisterUserBinding(),
    ),
    GetPage(
      name: _Paths.DAILY_TRACKER,
      page: () => DailyTrackerView(),
      binding: DailyTrackerBinding(),
      children: [
        GetPage(
          name: _Paths.DAILY_TRACKER,
          page: () => DailyTrackerView(),
          binding: DailyTrackerBinding(),
        ),
      ],
    ),
    GetPage(
      name: _Paths.REMINDERS,
      page: () => const RemindersView(),
      binding: RemindersBinding(),
    ),
    GetPage(
      name: _Paths.TODO_LIST,
      page: () => const TodoListView(),
      binding: TodoListBinding(),
    ),
    GetPage(
      name: _Paths.APPOINTMENT,
      page: () => const AppointmentView(),
      binding: AppointmentBinding(),
    ),
    GetPage(
      name: _Paths.EXPENSES,
      page: () => const ExpensesView(),
      binding: ExpensesBinding(),
    ),
    GetPage(
      name: _Paths.FAMILY_CARE_TAB,
      page: () => const FamilyCareTabView(),
      binding: FamilyCareTabBinding(),
    ),
    GetPage(
      name: _Paths.PET_CARE_TAB,
      page: () => const PetCareTabView(),
      binding: PetCareTabBinding(),
    ),
    GetPage(
      name: _Paths.LIFE_STYLE_TAB,
      page: () => const LifeStyleTabView(),
      binding: LifeStyleTabBinding(),
    ),
    GetPage(
      name: _Paths.THINGS_TO_DO_TAB,
      page: () => const ThingsToDoTabView(),
      binding: ThingsToDoTabBinding(),
    ),
    GetPage(
      name: _Paths.SHOPPING_TAB,
      page: () => const ShoppingTabView(),
      binding: ShoppingTabBinding(),
    ),
    GetPage(
      name: _Paths.MEDICINE_TAB,
      page: () => const MedicineTabView(),
      binding: MedicineTabBinding(),
    ),
    GetPage(
      name: _Paths.BILL_TAB,
      page: () => const BillTabView(),
      binding: BillTabBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_TAB,
      page: () => const EventTabView(),
      binding: EventTabBinding(),
    ),
    GetPage(
      name: _Paths.CALL_TAB,
      page: () => const CallTabView(),
      binding: CallTabBinding(),
    ),
    GetPage(
      name: _Paths.WATER_TAB,
      page: () => WaterTabView(),
      binding: WaterTabBinding(),
    ),
    GetPage(
      name: _Paths.GENERAL_TAB,
      page: () => const GeneralTabView(),
      binding: GeneralTabBinding(),
    ),
  ];
}
