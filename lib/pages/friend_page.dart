import 'package:flutter/material.dart';

class FriendPage extends StatefulWidget {
  FriendPage({Key? key}) : super(key: key);

  @override
  _FriendPageState createState() => _FriendPageState();
}

class _FriendPageState extends State<FriendPage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Friend Page',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
