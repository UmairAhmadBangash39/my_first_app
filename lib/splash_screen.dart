import 'package:flutter/material.dart';
import 'package:my_first_app/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3)); // Splash screen ka duration

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()), // HomeScreen ke liye navigation
    );
  }
  ///

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
              Color(0xffF2994A),
            Color(0xffF2A44A),
            Color(0xffF2C94C),
            ]),
          color: Colors.orange),
          child: Column(
              children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/splashtopleft.png",),
                Image.asset("images/splashtopright.png"),
              ],
            ),
          SizedBox(
            height: 200,
          ),
            Image.asset(
              "images/todo.png",
              width: 190.76,
            ),

            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("images/splashbottomleft.png"),
                Image.asset("images/splashbottomright.png"),

              ],
            ),
          ]),
          ),
        ),
    );
  }
}
