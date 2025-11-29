import 'package:flutter/material.dart';
import 'package:local_database/bottom_bar/bottom.dart';
import 'package:local_database/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:local_database/bottom_bar/bottom.dart';
import 'package:local_database/login/login_screen.dart';

// 🟢 CORRECT import
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  autoNavigate() async {
    await Future.delayed(Duration(seconds: 4));

    final SharedPreferences p = await SharedPreferences.getInstance();
    var a = p.getBool("isLogin");

    if (a == true) {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => Bottom()),
      );
    } else {
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }

  } // 🟢 CORRECT closing bracket — NO extra comma


  @override
  void initState() {
    super.initState();   // 🟢 CORRECT — super.initState() first
    autoNavigate();      // 🟢 CORRECT — call after super
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/bird.jpg"),
      ),
    );
  }
}
