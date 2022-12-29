import 'package:client_chama/src/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
            child: Text('Drawer Header'),
          ),
          DrawerListTile(
            title: 'chats',
            leading: const Icon(Icons.message),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),
          DrawerListTile(
            title: 'Create groups',
            leading: const Icon(Icons.group),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),

          DrawerListTile(
            title: 'Profile',
            leading: const Icon(Icons.person),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),

          DrawerListTile(
            title: 'Logout',
            leading: const Icon(Icons.logout),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    required Key? key,
    required this.title,
    required this.leading,
    required this.onPress,
  }) : super(key: key);

  final String title;
  final Icon leading;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0.0,
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(color: kSecondaryColor),
      ),
    );
  }
}
