 
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:local_database/bottom_bar/bottom.dart';
import 'package:local_database/splash_screen/splash_screen.dart';

import 'login/login_screen.dart';

void main (){
  runApp(MyApp());
  
 }
 class MyApp extends StatefulWidget {
   const MyApp({super.key});

   @override
   State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         body: SplashScreen(),
       ),


     );
   }
 }
