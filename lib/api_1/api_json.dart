import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

 class Api {
  Future <Map> getDataFromApi () async{
    try {
      var url = Uri.parse("https://appapi.coderangon.com/api/slider");
      var response = await http.get(url);
      log("===${jsonDecode(response.body)}");
      return jsonDecode(response.body);



    }catch(error){
      log("=====error : $error");
    }
    return {};


  }

}