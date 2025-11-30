import 'package:flutter/material.dart';
import 'package:local_database/database/api_database.dart';

class MotivationalQuotes extends StatefulWidget {
  const MotivationalQuotes({super.key});

  @override
  State<MotivationalQuotes> createState() => _MotivationalQuotesState();
}

class _MotivationalQuotesState extends State<MotivationalQuotes> {
  List commaImg = [
    "assets/comma_icon_01.png",
    "assets/comma_icon_02.png",
    "assets/comma_icon_03.png",
    "assets/comma_icon_04.png",
    "assets/comma_icon_01.png",
    "assets/comma_icon_02.png",
    "assets/comma_icon_03.png",
    "assets/comma_icon_04.png",
    "assets/comma_icon_03.png",
    "assets/comma_icon_04.png",
  ];
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

              padding: EdgeInsetsGeometry.symmetric(horizontal: 15,vertical: 10),
              shrinkWrap: true,
              itemCount: QuoteData.data.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color(0xffF7F7F7),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 23),
                    child: Column(

                      children: [
                        ListTile(
                          leading: Image(


                              image: AssetImage("${commaImg[index]}"),
                            height: 60,
                            width: 60,
                            fit: BoxFit.fill,
                          ),
                          title: Text(
                            "${QuoteData.data[index]["quote"]}",
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 22),
                          ),
                          subtitle: Row(
                            //mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "${QuoteData.data[index]["author"]}",
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
