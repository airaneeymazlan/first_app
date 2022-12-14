import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tutorial/landing_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      //We are going to navigate to a new screen (splash screen -> landing page)
      //There are two ways to use navigation
      
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            // fit: BoxFit.fill,
            // height: 70,
          ),
          const SizedBox(
            height: 30,
          ),
          const CircularProgressIndicator(
            color: Colors.black,
            //valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
          )
        ],
      ),
    );
  }
}
