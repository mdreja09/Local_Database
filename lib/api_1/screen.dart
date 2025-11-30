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
        title: Text(
          "Motivation Quotes",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 25),
            child: TextField(



              decoration: InputDecoration(

               hintText: "Search",
                prefixIcon: Icon(Icons.search),

                fillColor: Colors.grey,

                border: OutlineInputBorder(


                  borderRadius: BorderRadius.circular(10),
                ),


              ),
            ),
          ),
          Expanded(
            child: ListView.builder(

              padding: EdgeInsetsGeometry.symmetric(horizontal: 15,vertical: 20),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  color: Color(0xffF7F7F7),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 40),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset("assets/colon_1.png"),
                          title: Text(
                            "Honesty is the best policy",
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Unknown",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
