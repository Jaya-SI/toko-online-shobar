import 'package:flutter/material.dart';
import 'package:shopbar/pages/detail_chat_page.dart';
import 'package:shopbar/pages/home/main_page.dart';
import 'package:shopbar/pages/splash_page.dart';
import 'package:shopbar/pages/signin-page.dart';
import 'package:shopbar/pages/signup-page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SigInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home':(context) => MainPage(),
        '/detail-chat':(context) => DetailChatPage(),
      },
    );
  }
}
