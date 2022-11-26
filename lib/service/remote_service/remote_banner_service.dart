import 'package:grovo/const.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';


class RemoteBannerService{
  var client=http.Client();
  var remoteUrl='$baseUrl/api/banners';

  Future<dynamic>get()async{
   var response=await client.get(
      Uri.parse('$remoteUrl?populate=image'),
    );
   // print("Status code is :");
   //  print(response.statusCode);
   //  print(response.body);
    return response;
  }
  
}



