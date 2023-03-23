import 'package:flutter/material.dart';
import '../../pages/friend_page.dart';
import '../../pages/message_page.dart';
import '../../pages/notifications_page.dart';
import '../../pages/profile_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 200,
            child: DrawerHeader(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => {Navigator.of(context).pop()},
                  icon: Icon(Icons.arrow_back),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                Text(
                  'Menu',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[300]),
                  child: IconButton(
                    icon: const Icon(Icons.search_outlined),
                    onPressed: () => print('Menu search clicked'),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                )
              ],
            )),
          ),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('images/user.png'),
                ),
                title: const Text(
                  "Manas Pasayat",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('View Your Profile'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()))
                },
              ),
              const Divider(
                thickness: 1,
                color: Colors.black12,
              ),
              const ListTile(
                leading: Icon(
                  Icons.coronavirus_rounded,
                  color: Colors.red,
                ),
                title: Text('Covid-19 Information center',
                    style: TextStyle(fontSize: 16)),
                // onTap: () => print('Covid Icon tapped'),
              ),
              ListTile(
                leading: const Icon(
                  Icons.message,
                  color: Colors.green,
                ),
                title: const Text('Messages', style: TextStyle(fontSize: 16)),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Material(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 20.0),
                                  child: MessagePage(),
                                ),
                              )))
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.people,
                  color: Colors.green,
                ),
                title: const Text('Friends', style: TextStyle(fontSize: 16)),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Material(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 20.0),
                                  child: FriendPage(),
                                ),
                              )))
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.ring_volume,
                  color: Colors.green,
                ),
                title:
                    const Text('Notifications', style: TextStyle(fontSize: 16)),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Material(
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 20.0),
                                  child: NotificationPage(),
                                ),
                              )))
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
                title: const Text('Settings', style: TextStyle(fontSize: 16)),
                onTap: () => {print('Settings clicked')},
              ),
              ListTile(
                leading: const Icon(
                  Icons.privacy_tip,
                  color: Colors.grey,
                ),
                title: const Text('Privacy Policy',
                    style: TextStyle(fontSize: 16)),
                onTap: () => {print('Privacy clicked')},
              ),
              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.black,
                ),
                title: const Text('Logout', style: TextStyle(fontSize: 16)),
                onTap: () => {print('LogOut clicked')},
              ),
            ],
          ))
        ],
      ),
    );
  }
}
