import 'package:exp07_ven/profilepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
                radius: 50.0,
                backgroundImage:
                    AssetImage('assets/undraw_Female_avatar_efig.png')),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color(0xff887BB0),
                Color(0xff85D2D0),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
            accountName: Text(
              "Vendra Sekar",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              "vendra0408@gmail.com",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person, color: Color(0xff887BB0)),
            title: const Text('My Profile'),
            onTap: () {
              // Navigate to your profile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.dashboard, color: Color(0xff887BB0)),
            title: const Text(' Dashboard '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.collections, color: Color(0xff887BB0)),
            title: const Text(' Collections '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.video_settings, color: Color(0xff887BB0)),
            title: const Text(' Saved Videos '),
            onTap: () {
              Navigator.pop(context);
            },
            selected: false,
            selectedTileColor: Color(0xff85D2D0),
          ),
          ListTile(
            leading: Icon(Icons.save, color: Color(0xff887BB0)),
            title: const Text(' Saved Drafts '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Color(0xff887BB0)),
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
