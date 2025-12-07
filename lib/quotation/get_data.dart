import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http ;
class  ApiData {

  
    Future<Map> getData() async{
      try{
        var url = Uri.parse("https://appapi.coderangon.com/api/authors/1/quotes");
        var r = await http.get(url);
        if (r.statusCode == 200 ){
          return jsonDecode(r.body);
        }
        
      }catch(e){
        log("======== Error: $e");
        
      }
      return{};
    }
    
    


}






