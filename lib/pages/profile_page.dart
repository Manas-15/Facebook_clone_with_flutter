import 'package:flutter/material.dart';

import '../widgets/home/homepagemenubar.dart';
import '../widgets/home/post.dart';
import '../widgets/home/postbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "facebook",
      theme: ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            Text("Sonam")
          ]),
        ),
        body: ListView(
          children: [
            Container(
              height: 255,
              width: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  GestureDetector(
                    onTap: () => {},
                    child: Column(
                      children: [
                        Container(
                          height: 170,
                          width: 400,
                          margin: const EdgeInsets.only(top: 10.0),
                          child: const ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20)),
                            child: Image(
                              image: AssetImage('images/19722.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10.0,
                      left: 140.0,
                      child: Container(
                        height: 120,
                        width: 120,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          child: Image(
                            image: AssetImage('images/user.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Sonam Sharma',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () => {},
                      child: Row(
                        children: [Icon(Icons.add_circle), Text('Add a Story')],
                      )),
                  ElevatedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[400]),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  IconButton(onPressed: () => {}, icon: Icon(Icons.more_horiz))
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: const [
                      Icon(Icons.book),
                      Text(
                        'Studid at IGNOU -  The Peoples University',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: const [
                      Icon(Icons.gamepad),
                      Text(
                        'Single',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Row(
                    children: const [
                      Icon(Icons.info),
                      Text(
                        'About',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Friends',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () => print('find friends clicked'),
                      child: const Text('Find friends'))
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black38,
            ),
            Postbar(),
            HomePageMenubar(),
            Post()
          ],
        ),
      ),
    );
  }
}
