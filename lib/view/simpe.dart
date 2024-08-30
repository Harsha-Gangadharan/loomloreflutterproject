import 'package:flutter/material.dart';

class SimplePage extends StatefulWidget {
  const SimplePage({super.key});

  @override
  State<SimplePage> createState() => _SimplePageState();
}

class _SimplePageState extends State<SimplePage> {
  
  //  ShowAlert(){
  //   return showDialog(context: context, builder: (context),)
  // }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("simple"),
      ),
      body: Column(children: [
        

      ]

      ),
    );
  }
}