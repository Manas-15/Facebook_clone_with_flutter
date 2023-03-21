import 'package:flutter/material.dart';

class MarketPlacePage extends StatefulWidget {
  MarketPlacePage({Key? key}) : super(key: key);

  @override
  _MarketPlacePageState createState() => _MarketPlacePageState();
}

class _MarketPlacePageState extends State<MarketPlacePage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      'MarketPlace Page',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
