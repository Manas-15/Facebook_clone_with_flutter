import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset('images/88378.jpg'),
          title: const Text('Spiderman '),
          subtitle: Text('this is subtitle'),
          trailing: Icon(Icons.delete),
        )
      ],
    );
  }
}
