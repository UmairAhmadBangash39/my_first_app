import 'package:flutter/material.dart';
import 'package:my_first_app/splash_screen.dart';
import 'package:my_first_app/verify_code_screen.dart';

import 'create_account_screen.dart';
import 'forget_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}

