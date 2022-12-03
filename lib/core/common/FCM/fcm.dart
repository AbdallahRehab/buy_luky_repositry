import 'dart:convert';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:buy_luck/core/Common/app_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../features/user_management/data/repository/user_management_repository.dart';
import '../app_colors.dart';
import 'firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // print("FCM:MessagingBackground:${message.data.toString()}");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  pushCustomNotification(message);
  // print("Handling a background message: ${message.messageId}");
}

pushCustomNotification(RemoteMessage message) async {
  print('/////////////////////////////////////');
  print(message.data.toString());
  AwesomeNotifications().createNotification(
    content: NotificationContent(
        id: int.parse(message.data['type_id']),
        channelKey: 'buy_luck_notification',
        title: message.data['title'],
        body: message.data['body'],
        bigPicture: message.data['image'] != null ? message.data['image'] : "",
        notificationLayout: message.data['type'] != 'chat'
            ? NotificationLayout.Default
            : message.data['type'] == 'chat' && message.data['image'] == ""
                ? NotificationLayout.Inbox
                : message.data['image'] != null
                    ? NotificationLayout.BigPicture
                    : NotificationLayout.BigText,
        payload: {"data": json.encode(message.data)}),
  );
}

deleteNotification(int id) {
  AwesomeNotifications().dismiss(id);
}

class FCM {
  startFCM() async {
    try {
      //Init firebase buy_luck_notification


      FirebaseMessaging messaging = FirebaseMessaging.instance;

      // Update token when user login
      // FirebaseMessaging.instance.onTokenRefresh.listen((String token) async {
      //   if (await SecureStorageManager()
      //       .isContainsKey(SecureStorageKeys.accountData)) {
      //     AdminNotificationsController().updateFCMToken(token);
      //   }
      // });
      print('########## ${messaging.app.name}');
      String? token = await FirebaseMessaging.instance.getToken();

      ///updateFCMToken server
      // if (await SecureStorageManager()
      //     .isContainsKey(SecureStorageKeys.accountData)) {
      //   AdminNotificationsController().updateFCMToken(token!);
      // }

      // if (!await UserManagementRepository.hasToken && !(await UserManagementRepository.isVerify ?? false)) {
        AppConfig().persistFcmToken(token!);
        print(' Save FCM token $token');
      // }

      print('FCM token $token');

      try {
        NotificationSettings settings = await messaging.requestPermission(
          alert: true,
          announcement: false,
          badge: true,
          carPlay: false,
          criticalAlert: false,
          provisional: false,
          sound: true,
        );
      } catch (e) {}

      AwesomeNotifications().initialize(null, [
        NotificationChannel(
            channelKey: 'buy_luck_notification',
            channelName: 'buy_luck_notification',
            channelDescription:
                'Buy Luck channel get you all news/notification in Buy Luck App',
            defaultColor: AppConfig().themeMode == ThemeMode.light ? AppColors.primaryColorLight:AppColors.primaryColorDark,
            channelShowBadge: true,
            ledColor: Colors.white)
      ]);

      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        print("FCM:onMessage:${message.data}");
        pushCustomNotification(message);
      });

      bool isClicked = false;
      // AwesomeNotifications().setListeners(
      AwesomeNotifications().actionStream.listen( (receivedNotification) async {
          Map<String, dynamic> bodydata =
              json.decode(receivedNotification.payload!['data'].toString());

          isClicked = true;
          print("FCM:click:${receivedNotification.payload}");
          if (isClicked) {
            /* On Reply message*/

            // if (bodydata['type'] == 'admin_new_client_added') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_new_client_car_added') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_client_profile_updated') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_client_car_updated') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] ==
            //     'admin_client_service_added_to_cart') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] ==
            //     'admin_client_remove_service_from_cart') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_client_cancel_order') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] ==
            //     'admin_client_system_discount_demand') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_client_new_order') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_complete_client_order') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_client_order_payed') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else if (bodydata['type'] == 'admin_client_order_finished') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // }else if (bodydata['type'] == 'worker_hire_end_date') {
            //   ///todo update navigator
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // } else {
            //   GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
            // }

            // GoTo.screen(GlobalData.globalContext!, AllNotificationsScreen());
          }
          isClicked = false;
        },
      );

      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);

      await FirebaseMessaging.instance.subscribeToTopic('All');

      if (kDebugMode) {
        await FirebaseMessaging.instance.subscribeToTopic('Testing');
      }


      print('---------------------------------------- statred fcm');
    } catch (e) {}
  }
}
