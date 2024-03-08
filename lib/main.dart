import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'notifiation_controller.dart';

void main() {
  AwesomeNotifications()
      .initialize('resource://drawable/res_notification_app_icon', [
    NotificationChannel(
        channelKey: 'basic_channel',
        channelName: 'Basic Notifications',
        defaultColor: Colors.teal,
        importance: NotificationImportance.High,
        channelShowBadge: true,
        channelDescription: 'Test')
  ]);

  AwesomeNotifications().setListeners(
      onActionReceivedMethod:
      NotificationController.onNotificationCreatedMethod);
  AwesomeNotifications().setListeners(
      onActionReceivedMethod:
      NotificationController.onNotificationDisplayMethod);
  AwesomeNotifications().setListeners(
      onActionReceivedMethod:
      NotificationController.onDismissActionReceivedMethod);
  AwesomeNotifications().setListeners(
      onActionReceivedMethod: NotificationController.onActionReceivedMethod);
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
      ),
      title: 'Green Thumbs',
      home: HomePage(),
    );
  }
}
