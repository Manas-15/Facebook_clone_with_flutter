import 'package:flutter/material.dart';

import '../models/message_model.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Messages",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                  child: IconButton(
                    onPressed: () => print('Create new message clicked'),
                    icon: const Icon(Icons.message),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.green,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                  child: IconButton(
                    onPressed: () => print('Setting icon button clicked'),
                    icon: const Icon(Icons.settings),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    color: Colors.black,
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
              itemCount: messageData.length,
              itemBuilder: (context, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          backgroundImage:
                              AssetImage(messageData[index].avatar),
                        ),
                        title: Text(
                          messageData[index].name,
                          style: const TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(messageData[index].status),
                        // trailing: IconButton(
                        //     iconSize: 20,
                        //     color: Colors.green,
                        //     onPressed: () => {},
                        //     icon: null),
                        onTap: () {
                          print('User tapped from message');
                        },
                      )
                    ],
                  )))
    ]);
  }
}
