import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe/items.dart';
import 'package:recipe/main.dart';

class NavBar extends StatelessWidget {
  final String data;

  const NavBar({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.red,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(data),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.list_alt_rounded),
            title: Text('Items'),
            onTap: () {
              showModalBottomSheet(
                  useSafeArea: true,
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => MyList());
            },
          ),
          ListTile(
            leading: Icon(Icons.shield_moon_outlined),
            title: Text('Change Password'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Exit'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => SystemNavigator.pop(),
          ),
        ],
      ),
    );
  }
}
