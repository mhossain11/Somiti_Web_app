/*
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Faysal Hossain"),
              accountEmail: Text("faysaloffice07@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person, size: 35),
              ),
            ),

            DrawerItem(
              icon: Icons.home,
              title: "Home",
              onTap: () {
                Navigator.pop(context);
              },
            ),

            DrawerItem(
              icon: Icons.person,
              title: "Profile",
              onTap: () {},
            ),

            DrawerItem(
              icon: Icons.settings,
              title: "Settings",
              onTap: () {},
            ),

            DrawerItem(
              icon: Icons.logout,
              title: "Logout",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}*/
