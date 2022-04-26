import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shopbar/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/sign-in');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: warnaHitam1,
      body: Center(
        child: Image.asset(
          'assets/image_splash.png',
          width: 130,
          height: 150,
        ),
      ),
    );
  }
}
