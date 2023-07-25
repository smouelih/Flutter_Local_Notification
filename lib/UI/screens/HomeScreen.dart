// ignore_for_file: file_names

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:localnotif/UI/widgets/MyNotifButton.dart';
import 'package:localnotif/services/Notification_Services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String text1 = 'text1';
  String text2 = 'text2';
  String text3 = 'text3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MyNotifButton(
            text: 'Normal Notif',
            onPressed: () async {
              await NotificationService.showNotification(
                title: 'Title of Notif',
                body: 'Body of Notif',
              );
            },
          ),
          MyNotifButton(
            text: 'Notif with summay',
            onPressed: () async {
              await NotificationService.showNotification(
                title: 'Title of Notif',
                body: 'Body of Notif',
                summary: 'Small Summary',
                notificationLayout: NotificationLayout.Inbox,
              );
            },
          ),
          MyNotifButton(
            text: 'Progress bar Notif',
            onPressed: () async {
              await NotificationService.showNotification(
                title: 'Title of Notif',
                body: 'Body of Notif',
                summary: 'Small Summary',
                notificationLayout: NotificationLayout.ProgressBar,
              );
            },
          ),
          MyNotifButton(
            text: 'Msg Notif',
            onPressed: () async {
              await NotificationService.showNotification(
                title: 'Title of Notif',
                body: 'Body of Notif',
                summary: 'Small Summary',
                notificationLayout: NotificationLayout.Messaging,
              );
            },
          ),
          MyNotifButton(
            text: 'Big Image Notif',
            onPressed: () async {
              await NotificationService.showNotification(
                title: 'Title of Notif',
                body: 'Body of Notif',
                summary: 'Small Summary',
                notificationLayout: NotificationLayout.BigPicture,
                bogPicture:
                    "https://imgv3.fotor.com/images/gallery/anime-female-with-long-blond-hair.png",
              );
            },
          ),
          MyNotifButton(
            text: 'Action Button Notif',
            onPressed: () async {
              await NotificationService.showNotification(
                title: 'Title of Notif',
                body: 'Body of Notif',
                payload: {
                  "navigate": "true",
                },
                actionButton: [
                  NotificationActionButton(
                    key: 'Check',
                    label: 'Check it out',
                    actionType: ActionType.SilentAction,
                  )
                ],
              );
            },
          ),
          MyNotifButton(
            text: 'Scheduled Notif',
            onPressed: () async {
              await NotificationService.showNotification(
                title: 'Scheduled Notif',
                body: 'Notif was fired after 7 sec',
                scheduled: true,
                interval: 7,
              );
            },
          ),
        ],
      ),
    );
  }
}
