import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tutorial/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Welcome Back, LOGIN for continue !',
                  // textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Enter your username and password",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Email'),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16),
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Colors.grey,
                        size: 20,
                      ),
                      hintText: "Email",
                      hintStyle:
                          TextStyle(fontSize: 14, color: Colors.grey[400])),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 30),
                Text('Password'),
                TextFormField(
                  decoration: InputDecoration(
                      //contentPadding: EdgeInsets.symmetric(vertical: 16),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.grey,
                        size: 20,
                      ),
                      hintText: "Password",
                      hintStyle:
                          TextStyle(fontSize: 14, color: Colors.grey[400])),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 60,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  color: const Color(0xff335589),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                    ),
                  ),
                ),
                SizedBox(
                  height: 29,
                ),
                Center(
                  child: InkWell(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: "Don't Have an Account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: " Sign Up",
                        style: TextStyle(
                            color: Color(0xff335589),
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
                    onTap: () {
                      // Navigator.pushReplacement(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => HomePage()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
