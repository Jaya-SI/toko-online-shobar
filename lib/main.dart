import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopbar/pages/cart_page.dart';
import 'package:shopbar/pages/checkout_page.dart';
import 'package:shopbar/pages/checkout_success_page.dart';
import 'package:shopbar/pages/detail_chat_page.dart';
import 'package:shopbar/pages/editProfile_page.dart';
import 'package:shopbar/pages/home/main_page.dart';
import 'package:shopbar/pages/product_page.dart';
import 'package:shopbar/pages/splash_page.dart';
import 'package:shopbar/pages/signin-page.dart';
import 'package:shopbar/pages/signup-page.dart';
import 'package:shopbar/providers/auth_provider.dart';
import 'package:shopbar/providers/cart_provider.dart';
import 'package:shopbar/providers/page_provide.dart';
import 'package:shopbar/providers/product_provider.dart';
import 'package:shopbar/providers/transaction_provider.dart';
import 'package:shopbar/providers/whislist_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WhislistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SigInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfile(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccess(),
        },
      ),
    );
  }
}
