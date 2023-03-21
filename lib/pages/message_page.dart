import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  MessagePage({Key? key}) : super(key: key);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Message Page',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
