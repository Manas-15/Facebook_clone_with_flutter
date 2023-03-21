import 'package:flutter/material.dart';

class VideoPage extends StatefulWidget {
  VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Video Page',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
