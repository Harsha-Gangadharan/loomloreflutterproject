import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_lore/view/authentication/widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: const BoxDecoration(
                    color:  Color(0xffCC8381),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  left: 35,
                  top: 130,
                  child: Text(
                    'Welcome\nBack',
                    style:   GoogleFonts.poppins(
                            fontSize: 33,
                            fontWeight: FontWeight.bold,  color: Colors.white,
                          ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const UserData(
                      hintext: "Email",
                      icon: Icon(Icons.email),
                      fillColor: Colors.white,
                    ),
                    SizedBox(height: 20),
                    const UserData(
                      hintext: "Password",
                      icon: Icon(Icons.lock),
                      fillColor: Colors.white,
                    ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffCC8381),
                          minimumSize: Size(double.infinity, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: GoogleFonts.poppins(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "or",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.g_translate,
                          color: Color(0xffCC8381),
                        ),
                        label: Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Color(0xffCC8381),
                            fontSize: 18,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, 50),
                          side: BorderSide(color: Color(0xffCC8381)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
