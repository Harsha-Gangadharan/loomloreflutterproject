import 'package:flutter/material.dart';

import 'package:flutter_lore/view/home/homewidgets.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WidgetHome a = WidgetHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: a.buildAppBar(), // Passing context for opening drawer
      drawer: buildDrawer(), // Drawer should be a direct child of Scaffold
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            a.buildGreeting(),
            a.buildSearchBar(),
            SizedBox(height: 20),
            a.buildCategoryTabs(),
            SizedBox(height: 20),
            Expanded(child: a.buildProductGrid()),
          ],
        ),
      ),
    );
  }

  Drawer buildDrawer() {
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Using a Container to control the height of DrawerHeader
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("asset/profile.jpg"),
                ),
                SizedBox(height: 10),
                Text(
                  'Harsha',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'jane.doe@gmail.com',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () {
              // Handle Notification tap
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('My Creation'),
            onTap: () {
              // Handle My Creation tap
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Wishlist'),
            onTap: () {
              // Handle Wishlist tap
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Complaints'),
            onTap: () {
              // Handle Complaints tap
            },
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffd9a0a0),
                padding: EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                // Handle Logout tap
              },
              child: Text('Logout'),
            ),
          ),
        ],
      ),
    ),
  );
}

  }

