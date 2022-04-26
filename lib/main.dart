import 'package:flutter/material.dart';
import 'package:shopbar/pages/home_page.dart';
import 'package:shopbar/pages/splash_page.dart';
import 'package:shopbar/sigin-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => SplashPage(),
        '/sign-in':(context) => SigInPage(),
      },
    );
  }
}


