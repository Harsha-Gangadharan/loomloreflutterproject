import 'package:flutter/material.dart';




class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              hintText: "Search . . . .",
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          _buildUserItem("James Anderson", "okay well done", "asset/jame.jpeg"),
          _buildUserItem("John Azzi", "That is nice man", 'asset/person.jpeg'),
          _buildUserItem("Aleena Peter", "8:03", "asset/aleena.jpeg"),
          _buildUserItem("Eric William", "8:05", "asset/eric.jpeg"),
        ],
      ),
    );
  }

  Widget _buildUserItem(String name, String message, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 25,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Icon(Icons.check_circle, color: Colors.blue, size: 15),
                  ],
                ),
                Text(
                  message,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Icon(Icons.videocam),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
