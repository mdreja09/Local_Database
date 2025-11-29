import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.emailController,
  });

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailController,
      decoration: InputDecoration(
        labelText: "Email",
        prefixIcon: Icon(Icons.email_outlined),

        fillColor: Colors.grey,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),

        //filled: true,
      ),
    );
  }
}