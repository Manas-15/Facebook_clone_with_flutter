// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../models/friends_model.dart';

class FriendPage extends StatefulWidget {
  const FriendPage({Key? key}) : super(key: key);

  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Friends",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: IconButton(
                      onPressed: () => print('person icon button clicked'),
                      icon: const Icon(Icons.person),
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
                      onPressed: () => print('People icon button clicked'),
                      icon: const Icon(Icons.people),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      color: Colors.red,
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
                itemCount: friendsData.length,
                itemBuilder: (context, index) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blueGrey,
                            backgroundImage:
                                AssetImage(friendsData[index].avatar),
                          ),
                          title: Text(
                            friendsData[index].name,
                            style: const TextStyle(fontSize: 20),
                          ),
                          trailing: Wrap(
                            spacing: 12,
                            children: [
                              TextButton(
                                onPressed: () => print('Friend request sent'),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                child: const Text('Add friend'),
                              ),
                              TextButton(
                                onPressed: () => print('Remove Friend'),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey[400],
                                    foregroundColor: Colors.black,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                child: const Text('Remove'),
                              )
                            ],
                          ),
                          onTap: () {
                            print('Open Clicked User Profile');
                          },
                        )
                      ],
                    )))
      ],
    );
  }
}
