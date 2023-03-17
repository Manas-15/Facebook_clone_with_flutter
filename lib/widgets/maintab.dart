import 'package:flutter/material.dart';

class MainTab extends StatefulWidget {
  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.people_outlined)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(icon: Icon(Icons.notifications_outlined)),
    Tab(icon: Icon(Icons.shopping_bag_outlined)),
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: topTabs.length,
      initialIndex: 0,
      vsync: this,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'facebook lite',
          style: TextStyle(
              fontFamily: 'Klavika', fontSize: 28, color: Colors.blue[700]),
        ),
        actions: [
          Container(
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                print('Search Button Clicked');
              },
            ),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: () {
                print('Menu Button Clicked');
              },
            ),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
          ),
        ],
        // bottom: TabBar(
        //   controller: _tabController,
        //   indicatorColor: Colors.black,
        //   tabs: topTabs,
        // ),
      ),
    );
  }
}
