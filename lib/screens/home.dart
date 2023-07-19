import 'package:flutter/material.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

import '../utilities/appColors.dart';
import '../widgets/drawer.dart';
import 'chatScreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool __isSearching = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                __isSearching = !__isSearching;
              });
            },
            icon: Icon(__isSearching ? Icons.close : Icons.search),
          ),
        ],
        title: __isSearching ? _buildSearchField() : Text("Private Chat"),
      ),
      drawer: CustomDrawer(),
      body: Container(
          child: ListView.builder(
        itemCount: 15,
        itemBuilder: (ctx, index) {
          // final chat = recentChats[index];
          final userName = "Joe";

          return Card(
            child: ListTile(
              leading:
                  // chat.profileImageLink != null
                  //     ? CircleAvatar(backgroundImage: NetworkImage(chat.profileImageLink!))
                  //     :
                  AdvancedAvatar(
                name: userName,
                statusColor: Colors.green,
                statusAlignment: Alignment.bottomRight,
                size: 55,
              ),
              title: Text(userName),
              subtitle: const Text("hi this dev"),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey[400],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ChatScreen(), // Replace with the desired screen to navigate to
                  ),
                );
              },
            ),
          );
        },
      )),
    );
  }

  Widget _buildSearchField() {
    return Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 43, 45, 75),
          borderRadius: BorderRadius.circular(10)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
        textInputAction: TextInputAction.search,
        onSubmitted: (value) {
          // Handle search action
        },
      ),
    );
  }
}
