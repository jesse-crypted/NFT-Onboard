import 'dart:async';

import 'package:flutter/material.dart';

import 'screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
// implement initstate
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Onboarding1()),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'DiceBear',
          style: TextStyle(
              fontSize: 45,
              color: Color.fromRGBO(055, 154, 211, 1),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
