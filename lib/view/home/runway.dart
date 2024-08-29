import 'package:flutter/material.dart';
import 'package:flutter_lore/view/home/ruwaywidgwt.dart';

class RunwayPage extends StatefulWidget {
  const RunwayPage({super.key});

  @override
  State<RunwayPage> createState() => _RunwayPageState();
}

class _RunwayPageState extends State<RunwayPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Image.asset(
          'asset/fashion.png',  // Replace with your banner image
          height: 710,
          
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,  // Number of columns
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.6,  // Adjust this value to control the height of the grid items
          ),
          itemCount: 4,  // Replace with the actual number of items
          itemBuilder: (context, index) {
            return FashionItem(
              imageUrl: 'asset/p1.jpeg',  // Replace with your image assets
              username: ['Harsha', 'Vismaya', 'Thejas', 'Chethan'][index],  // Replace with your usernames
              likes: ['41k', '40k', '39k', '38k'][index],  // Replace with actual likes count
              profilePic: 'asset/men.jpeg', image: 'asset/fashion.png',  // Replace with profile picture assets
            );
          },
        ),
      ),
    );
  }
}
