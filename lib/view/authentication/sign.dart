import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_lore/view/authentication/login.dart';
import 'package:flutter_lore/view/authentication/widget.dart';
import 'package:flutter_lore/view/home/bottamnavi.dart';


import 'package:google_fonts/google_fonts.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final _formkey = GlobalKey<FormState>();
  final _UsernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _EmailIdController = TextEditingController();
  final _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
             Container(
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xffCC8381),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const UserData(hintext: 'username', icon: Icon(Icons.account_circle), fillColor: Colors.white,),
                      SizedBox(height: 20,),
                      UserData(hintext: "email", icon: Icon(Icons.email), fillColor: Colors.white,),
                      SizedBox(height: 20,),
                      UserData(hintext: "Password", icon: Icon(Icons.visibility), fillColor: Colors.white,),
              SizedBox(height: 20,),
                      
                     SizedBox(height: 20),
          
             SizedBox(height: 20),
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {
          
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>Packages(indexNum: 0), 
));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:  Color(0xffCC8381),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Sign Up",
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
                  color:  Color(0xffCC8381),
                ),
                label: Text(
                  "Continue with Google",
                  style: TextStyle(color: Color(0xffCC8381), fontSize: 18),
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
            TextButton(
              onPressed: () {},
              child: Text(
                "already have an account?",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
           
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
                              'Login',
                              style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                            ),
                ),
              ),
            
            SizedBox(height: 20),
          ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
