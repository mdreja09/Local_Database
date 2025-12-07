import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:local_database/quotation/get_data.dart';

class QuotationScreen extends StatefulWidget {
  const QuotationScreen({super.key});

  @override
  State<QuotationScreen> createState() => _QuotationScreenState();
}

class _QuotationScreenState extends State<QuotationScreen> {
  List qData = [];
  getData() async{
    var a = await ApiData().getData();
    log(" ${a["data"]}");
    qData = a["data"];
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(child: Text("data")),
    );
  }
}
