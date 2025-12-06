import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_database/api_1/api_json.dart';
import 'package:local_database/database/api_database.dart';
import 'package:shimmer/shimmer.dart';

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
  bool isLoading = true;

  //List qData = [];
  List qData =[];
  getDataFronApi() async {
    isLoading = true;
    setState(() {

    });
    log(" =======$isLoading");
    await Future.delayed(Duration(seconds: 5));
    var a = await Api().getDataFromApi();
    log("===$a");
    qData = a ["data"];

    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    //loadData();
    getDataFronApi();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECEFF7),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,

        title: Text(
          "Motivation Quotes",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
        ),
        actions: [InkWell(
          onTap: () async{
            log("===========");

            getDataFronApi();

            var a = await Api().getDataFromApi();

            log("$a");
            setState(() {

            });


          },
            child: Icon(Icons.refresh,size: 30,color: Colors.brown,))],
      ),
      body: isLoading == true
          ? Center(
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context, index) => SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 150.0,
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade200,
            highlightColor: Colors.white,
            child: Card(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 151,
              ),
            ),
          ),
        )),
      )
          : QuoteData.data.isEmpty
          ? Center(child: Text("No Data Found"))
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 25,
                  ),
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
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    shrinkWrap: true,
                    itemCount: QuoteData.data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        color: Color(0xffF7F7F7),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 23,
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image(
                                  image: AssetImage("${commaImg[index]}"),
                                  height: 70,
                                  width: 70,
                                  fit: BoxFit.fill,
                                ),
                                title: Text(
                                  "${qData[index]["quote"]}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                                subtitle: Row(
                                  //mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${qData[index]["author"]}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
