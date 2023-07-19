import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

import '../utilities/appColors.dart';

class CustomDrawer extends StatelessWidget {
  Widget buildDrawerOption({required String title, required IconData icon}) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      trailing: Icon(Icons.arrow_right_rounded),
      onTap: () {
        // Handle drawer option tap
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.56,
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AdvancedAvatar(
                    // decoration: BoxDecoration(color: Colors.grey),
                    name: "Surafel",
                    statusColor: Colors.green,
                    statusAlignment: Alignment.bottomRight,
                    size: 55,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Samson",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "surafel@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          buildDrawerOption(
            title: 'Private Chat',
            icon: Icons.chat_rounded,
          ),
          Divider(),
          buildDrawerOption(
            title: 'Group Chat',
            icon: Icons.groups_sharp,
          ),
          Divider(),
          buildDrawerOption(
            title: 'Channel',
            icon: Icons.broadcast_on_home,
          ),
          Divider(),
          buildDrawerOption(
            title: 'Bot',
            icon: Icons.android,
          ),
          Divider(),
          buildDrawerOption(
            title: 'Profile',
            icon: Icons.person,
          ),
          Divider(),
          buildDrawerOption(
            title: 'About Us',
            icon: Icons.info,
          ),
        ],
      ),
    );
  }
}
