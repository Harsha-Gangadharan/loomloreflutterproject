import 'package:flutter/material.dart';
import 'package:flutter_lore/view/authentication/login.dart';
import 'package:flutter_lore/view/authentication/sign.dart';
import 'package:flutter_lore/view/home/bottamnavi.dart';
import 'package:flutter_lore/view/home/chat.dart';
import 'package:flutter_lore/view/home/home.dart';
import 'package:flutter_lore/view/home/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: SignUp(),
    );
  }
}