import 'package:flutter/material.dart';

import '../models/notification_model.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Notifications",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                  child: IconButton(
                    onPressed: () => print('Notification icon button clicked'),
                    icon: const Icon(Icons.check_circle),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.green,
                    tooltip: 'Mark all notifications as read',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      const Divider(
        thickness: 1,
        color: Colors.black38,
      ),
      Expanded(
          child: ListView.builder(
              itemCount: notificationData.length,
              itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          backgroundImage:
                              AssetImage(notificationData[index].avatar),
                        ),
                        title: Text(
                          notificationData[index].name +
                              '-' +
                              notificationData[index].description,
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(notificationData[index].time),
                        trailing: IconButton(
                            iconSize: 25,
                            color: Colors.black,
                            onPressed: () =>
                                {print('More notification clicked')},
                            icon: Icon(Icons.more_vert_outlined)),
                        onTap: () {
                          print('User tapped from message');
                        },
                      )
                    ],
                  )))
    ]);
  }
}
