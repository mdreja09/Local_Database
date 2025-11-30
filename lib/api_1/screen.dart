import 'package:flutter/material.dart';

class MotivationalQuotes extends StatefulWidget {
  const MotivationalQuotes({super.key});

  @override
  State<MotivationalQuotes> createState() => _MotivationalQuotesState();
}

class _MotivationalQuotesState extends State<MotivationalQuotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECEFF7),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("Motivation Quotes",
          style: TextStyle(fontSize: 26,fontWeight: FontWeight.w800),),
      ),
      body: Column(
        children: [
        TextField(


        decoration: InputDecoration(
         // labelText: "Email",
          prefixIcon: Icon(Icons.search),

          fillColor: Colors.grey,

          border: OutlineInputBorder(

            borderRadius: BorderRadius.circular(10),
          ),

          //filled: true,
        ),
      ),
          ListView.builder(itemBuilder: )

        ],
      ) ,

    );
  }
}
