import 'dart:convert';
import 'package:http/http.dart' as http;
import './models/response.dart';
 
   const String url = "https://api.rootnet.in/covid19-in/stats/latest";
 
   Future<Response> getPhotos() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        Response list = parsePhotos(response.body);
        return list;
      } else {
        throw Exception("Error");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
 
   Response parsePhotos(String responseBody) {
    final parsed = Response.fromJson(json.decode(responseBody));
    return parsed;
  }


