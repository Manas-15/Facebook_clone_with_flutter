import 'package:flutter/material.dart';
import 'package:project/app_screens/pratice.dart';
import 'package:project/widgets/maintab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Lite',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: MainTab(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            title: 'Flutter Home',
            home: Scaffold(
                appBar: AppBar(
                  title: Text('My flutter App'),
                ),
                backgroundColor: Colors.cyan,
                body: MainTab()

                // Stack(
                //   children: [
                //     Image(image: AssetImage('images/19722.jpg')),
                //     Text(
                //       'This is spideman',
                //       style: TextStyle(color: Colors.redAccent, fontSize: 40),
                //     )
                //   ],
                // )

                // GridView.count(crossAxisCount:2,mainAxisSpacing:200,crossAxisSpacing:100, children: [
                //   Image(image: AssetImage('images/19722.jpg'), fit: BoxFit.cover),
                //   Image(image: AssetImage('images/88378.jpg'), fit: BoxFit.cover),
                //   Image(image: AssetImage('images/54678.jpg'), fit: BoxFit.cover),
                // ])

                // Image(
                //     image: NetworkImage(
                //         'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80'))

                // Center(
                //   child: Text(
                //     'Material App',
                //     textDirection: TextDirection.ltr,
                //     style: TextStyle(
                //         color: Colors.redAccent,
                //         fontSize: 50,
                //         decoration: TextDecoration.none),
                //   ),
                // )
                ))

        //   MaterialApp(
        //   title: 'Flutter',
        //   home: Container(
        //     decoration: BoxDecoration(color: Colors.blueAccent),
        //     child: Center(
        //       child: Text(
        //         'Material App',
        //         textDirection: TextDirection.ltr,
        //         style:
        //             TextStyle(color: Colors.white, decoration: TextDecoration.none),
        //       ),
        //     ),
        //   ),
        // )

        // Directionality(
        //       textDirection: TextDirection.ltr,
        //       child: ListView(
        //         children: [
        //           Container(
        //             height: 100,
        //             color: Colors.purpleAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.purpleAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.purpleAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.purpleAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.purpleAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.purpleAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.purpleAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //           Container(
        //             height: 100,
        //             color: Colors.blueAccent,
        //             child: Center(
        //               child: Text(
        //                 "1",
        //                 textDirection: TextDirection.ltr,
        //                 style: TextStyle(fontSize: 100),
        //               ),
        //             ),
        //           ),
        //         ],
        //       ))

        //   Column(
        //   children: [
        //     Expanded(
        //         child: Text('One',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0))),
        //     Expanded(
        //         child: Text('Two',
        //             textDirection: TextDirection.ltr,
        //             style: TextStyle(fontSize: 50.0)))
        //   ],
        // )

        //   Row(
        //   textDirection: TextDirection.ltr,
        //   children: [
        //     Expanded(
        //         child: Text(
        //       'One',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(fontSize: 50.0),
        //     )),
        //     Expanded(
        //         child: Text(
        //       'Two',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(fontSize: 50.0),
        //     )),
        //     Expanded(
        //         child: Text(
        //       'Three',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(fontSize: 50.0),
        //     )),
        //     Text(
        //       'Three',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(fontSize: 50.0),
        //     ),
        //     Text(
        //       'Three',
        //       textDirection: TextDirection.ltr,
        //       style: TextStyle(fontSize: 50.0),
        //     )
        //   ],
        // ));

        ;
  }
}
