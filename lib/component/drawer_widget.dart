import 'package:flutter/material.dart';
import 'package:login_form/component/privacy_policy.dart';
import 'package:flutter/services.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 239, 241, 245),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 77, 92, 143),
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
            ),
            accountName: Text(
              "Gitesh Shimpy",
              style: TextStyle(color: Color.fromARGB(255, 227, 210, 210)),
            ),
            accountEmail: Text(
              "gitesh23shimpy@gmail.com",
              style: TextStyle(color: Color.fromARGB(255, 255, 237, 237)),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "images/profile.jpeg",
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Color.fromARGB(255, 0, 0, 0)),
            title: Text(
              "Favourate",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.people, color: Color.fromARGB(255, 0, 0, 0)),
            title: Text(
              "Friends",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Share",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Settings",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.description,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Policies",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrivacyPolicy()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            title: Text(
              "Exit",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
            ),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
