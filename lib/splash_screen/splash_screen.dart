import 'package:flutter/material.dart';
import 'package:local_database/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}
class _SplashScreenState extends State<SplashScreen> {
  autoNavigate () async{
    await Future.delayed(Duration(seconds: 4));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
  }


  @override
  @override
  void initState() {
    // TODO: implement initState
    autoNavigate();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/playstorlogo.png") ,
      ),
    );
  }
}
