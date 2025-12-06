import 'package:flutter/material.dart';

class Api2 extends StatefulWidget {
  const Api2({super.key});

  @override
  State<Api2> createState() => _Api2State();
}

class _Api2State extends State<Api2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          "Religion Names",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("A",style: TextStyle(color: Colors.white),),
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("B",style: TextStyle(color: Colors.white),),
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("C",style: TextStyle(color: Colors.white),),
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("D",style: TextStyle(color: Colors.white),),
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text("E",style: TextStyle(color: Colors.white),),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
