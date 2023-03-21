import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../pages/friend_page.dart';
import '../pages/home_page.dart';
import '../pages/marketplace_page.dart';
import '../pages/message_page.dart';
import '../pages/notifications_page.dart';
import '../pages/video_page.dart';
import 'home/mydrawer.dart';
import 'package:badges/badges.dart' as badges;

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  _MainTabState createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> topTabs = <Tab>[
    Tab(
      icon: Icon(Icons.home_outlined),
    ),
    Tab(
      icon: Icon(Icons.people_outlined),
    ),
    Tab(
      icon: Icon(Icons.message_outlined),
    ),
    Tab(
      icon: badges.Badge(
        position: badges.BadgePosition.topEnd(top: -20, end: -5),
        badgeContent: Text(
          '5',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        child: Icon(Icons.notifications_outlined),
      ),
    ),
    Tab(
      icon: Icon(Icons.video_library_outlined),
    ),
    Tab(
      icon: Icon(Icons.shopping_bag_outlined),
    ),
  ];

  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, vsync: this, initialIndex: 0)
          ..addListener(() {
            setState(() => {});
          });
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on will pop");

    if (_tabController?.index == 0) {
      await SystemNavigator.pop();
    }

    Future.delayed(Duration(milliseconds: 200), () {
      print("set index");
      _tabController?.index = 0;
    });

    print("Return");
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        key: _scaffoldKey,
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
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
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
                onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[300]),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          width: MediaQuery.of(context).size.width * 0.3,
          child: MyDrawer(),
        ),
        body: TabBarView(controller: _tabController, children: [
          HomePage(),
          FriendPage(),
          MessagePage(),
          NotificationPage(),
          VideoPage(),
          MarketPlacePage(),
        ]),
      ),
    );
  }
}
