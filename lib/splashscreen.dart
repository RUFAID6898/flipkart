import 'dart:async';

import 'package:flipkart/screen_main_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenMainHome(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
              'https://logos-world.net/wp-content/uploads/2020/11/Flipkart-Emblem.png'),
          // child: Image.network(
          //     'https://logos-world.net/wp-content/uploads/2020/11/Flipkart-Emblem.png'),
        ),
      ),
    );
  }
}
