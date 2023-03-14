import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:softmodel/home/screens/accountscreen.dart';
import 'package:softmodel/home/screens/homescreen.dart';

import '../screens/settingscreen.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage(r'lib\splashscreen\assets\images\logov2.png'),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Username',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                const Text(
                  'user@email.com',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Color(0xff072f53),
            ),
            title: const Text(
              'Home Page',
              style: TextStyle(color: Color(0xff072f53)),
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color(0xff072f53),
            ),
            title: const Text(
              'Settings',
              style: TextStyle(color: Color(0xff072f53)),
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => SettingsScreen()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: Color(0xff072f53),
            ),
            title: const Text(
              'Account',
              style: TextStyle(color: Color(0xff072f53)),
            ),
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => AccountScreen()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Color(0xff072f53),
            ),
            title: const Text(
              'Log Out',
              style: TextStyle(color: Color(0xff072f53)),
            ),
            onTap: () {
              // TODO: Implement logout functionality
            },
          ),
        ],
      ),
    );
  }
}
