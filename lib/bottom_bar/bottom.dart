import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:local_database/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),

          child: InkWell(
            onTap: () async{
              setState(() {

              });
               final SharedPreferences p = await SharedPreferences.getInstance();
               p.remove("isLogin");
               Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>LoginScreen()));

            },
              child: Icon(Icons.logout, size: 25, color: Colors.orange)),
        )],
        title: Text(
          "Just Only for Demo",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Welcome",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.red,
            fontSize: 60,
          ),
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}
