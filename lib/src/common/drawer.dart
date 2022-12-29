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
            leading: const Icon(Icons.message,
            color: kBlack,
            ),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),
          DrawerListTile(
            title: 'Create groups',
            leading: const Icon(Icons.group,
            color: kBlack,
            ),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),

          DrawerListTile(
            title: 'Profile',
            leading: const Icon(Icons.person,color: kBlack,),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),
          const Divider(
            //It should not reach the end of the screen
            color: kBlack,
            thickness: 0.1,
          ),
          DrawerListTile(
            title: 'Logout',
            leading: const Icon(Icons.logout,
            color: kBlack,
            ),
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
        style: const TextStyle(color: kBlack),
      ),
    );
  }
}
