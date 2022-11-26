import 'package:grovo/const.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class RemotePopularcategoryService{
  var client =http.Client();
  var remoteUrl='$baseUrl/api/popular-categories';
  
  Future <dynamic> get() async{
    var response=await client.get(
      Uri.parse('$remoteUrl?populate=category,category.image&pagination[start]=0&pagination[limit]=5')
      // Uri.parse('http://10.12.68.92:1337/api/popular-categories?populate=category,category.image&pagination[start]=0&pagination[limit]=5')
    );
    print(response.statusCode);
    print(response.body);
    return response;
  }


}