import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_database/bottom_bar/bottom.dart';
import 'package:local_database/database/user.dart';
import 'package:local_database/login/text_field_1.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:shared_preferences_android/shared_preferences_android.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: TextFieldWidget(emailController: emailController)),
            SizedBox(height: 20),
            TextField(
              controller: passController,

              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: Icon(Icons.visibility_off),
                prefixIcon: Icon(Icons.password),

                fillColor: Colors.grey,

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),

                //filled: true,
              ),
            ),


            SizedBox(height: 20),

            InkWell(
              onTap: () async {
                // log("++++++${emailController.text}++++=");
                // log("++++++${passController.text}++++=");

                if (emailController.text == "") {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Please Enter Email")));
                } else if (passController.text == "") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Please Enter password")),
                  );
                }
                var a = UserData.user.where(
                  (v) =>
                      v['email'] == emailController.text &&
                      v['pass'] == passController.text,
                );
                if (a.isNotEmpty) {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Login Success")));

                  final SharedPreferences p =
                      await SharedPreferences.getInstance();
                  await p.setBool("isLogin", true);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Bottom()),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Wrong User or Password")),
                  );
                }

                // var a = UserData.user.where((v) => v['email'] == emailController.text && v['password'] == passController.text);
              },

              child: Card(
                color: Colors.blueAccent,

                child: Padding(
                  padding: const EdgeInsets.all(15),

                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
