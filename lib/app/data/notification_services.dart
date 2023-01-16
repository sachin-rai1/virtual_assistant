import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:get/get.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {

   /// initializing local notification plugin
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  ///setting up Notification details platform wise
  NotificationDetails platformChannelSpecificsConst = NotificationDetails(
      android: AndroidNotificationDetails(
        "channelId",
        "channelName",
        ticker: 'ticker',
        channelShowBadge: true,
        enableVibration: true,
        enableLights: true,
        color: Colors.green,
        playSound: true,
        priority: Priority.high,
        vibrationPattern: Int64List.fromList([0, 1000, 200]),
        category: AndroidNotificationCategory.alarm,
        importance: Importance.max,
        channelAction: AndroidNotificationChannelAction.createIfNotExists,
        actions: [
          const AndroidNotificationAction("1", "Mark As Read"),
          const AndroidNotificationAction("2", "Open"),
        ],
      ),
      iOS: const DarwinNotificationDetails());

  ///initializing local notification
  Future<void> init() async {
    await _configureLocalTimezone();
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );
    FlutterLocalNotificationsPlugin().initialize(
      InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsIOS),
      onDidReceiveNotificationResponse:
          (NotificationResponse notificationResponse) {
        switch (notificationResponse.notificationResponseType) {
          case NotificationResponseType.selectedNotification:
            print(notificationResponse.actionId);
            print("Notification Selected");

            break;
          case NotificationResponseType.selectedNotificationAction:
            if (notificationResponse.actionId == "2") {
              print(notificationResponse.actionId);
            }
            break;
        }
      },
    );
  }

  ///show notification at same time.
  showNotification(String title, String body) async {
    await flutterLocalNotificationsPlugin
        .show(0, title, body, platformChannelSpecificsConst, payload: "data");
  }


  ///show notification based on time only by getting today's date by default
  showTimelyScheduledNotification(int hour, int minute) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(1, "task.title",
        "task.note", _convertTime(hour, minute), platformChannelSpecificsConst,
        matchDateTimeComponents: DateTimeComponents.time,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime);
  }

  ///show notification based on date and time both
  showDateTimeScheduledNotification(int day , int month , int year , int hour, int minute) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(1, "task.title",
        "task.note",
        _convertDateTime(day, month, year, hour, minute),
        platformChannelSpecificsConst,
        matchDateTimeComponents: DateTimeComponents.time,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime);
  }

  ///after notification received
  Future onDidReceiveLocalNotification(int id, String? title, String? body, String? payload) async {
    Get.dialog(const Text("Welcome To Flutter"));
  }

  ///getting selected time only.
  tz.TZDateTime _convertTime(int hour, int minute) {
    print("I am Converting Time");
    print("Hour ${hour.toString()}");
    print("Minute ${minute.toString()}");

    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduleDate =
        tz.TZDateTime(tz.local, now.year, now.month, now.day, hour, minute);

    if (scheduleDate.isBefore(now)) {
      scheduleDate = scheduleDate.add(const Duration(days: 1));
    }

    print(scheduleDate);

    return scheduleDate;
  }

  ///getting selected date and time both
  tz.TZDateTime _convertDateTime(int day, int month, int year, int hour, int minute) {

    print("I am converting DateTime");
    print("day ${day.toString()}");
    print("month ${month.toString()}");
    print("year ${year.toString()}");
    print("Hour ${hour.toString()}");
    print("Minute ${minute.toString()}");

    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduleDate =
        tz.TZDateTime(tz.local, year, month, day, hour, minute);

    if (scheduleDate.isBefore(now)) {
      scheduleDate = scheduleDate.add(const Duration(days: 1));
    }
    print("Scheduled Date : $scheduleDate");

    return scheduleDate;
  }


  ///configuring localTimeZone as per device
  Future<void> _configureLocalTimezone() async {
    tz.initializeTimeZones();
    final String currentTimeZone =
        await FlutterNativeTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(currentTimeZone));
  }
}
