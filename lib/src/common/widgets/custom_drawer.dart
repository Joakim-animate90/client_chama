part of 'page.dart';

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
              color: kDarkGreen,
            ),
            child: DrawerHeaderContents(),
          ),
          DrawerListTile(
            title: 'chats',
            leading: const Icon(
              Icons.message,
              color: kPrimaryColor,
            ),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),
          const CustomDivider(),
          DrawerListTile(
            title: 'Create groups',
            leading: const Icon(
              Icons.group,
              color: kPrimaryColor,
            ),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),
          const CustomDivider(),
          DrawerListTile(
            title: 'Profile',
            leading: const Icon(
              Icons.person,
              color: kPrimaryColor,
            ),
            key: null,
            onPress: () {
              //update the state of the app
            },
          ),
          const CustomDivider(),
          DrawerListTile(
            title: 'Logout',
            leading: const Icon(
              Icons.logout,
              color: kPrimaryColor,
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

// create a class to arrange circle avatar with an image , and text in a column . They should be in the same container
class DrawerHeaderContents extends StatelessWidget {
  const DrawerHeaderContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        CustomSizedBox(
          height: 30.0,
        ),
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/images/profile_photo.png'),
        ),
        CustomSizedBox(
          height: 5.0,
        ),
        CustomText(
          text: 'Jane Doe',
          color: kSecondaryColor,
          fontSize: 14,
        ),
        CustomSizedBox(
          height: 3.0,
        ),
        CustomText(
          text: 'account@email.com',
          color: kSecondaryColor,
          fontSize: 12,
        ),
      ],
    );
  }
}
