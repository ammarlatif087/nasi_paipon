import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

import 'package:nasi_paipon/app/index.dart';

class HttpUtil {
  static Future<void> get(
    String url, String token,{
    required Function(dynamic response) onSuccess,
    required Function(String error) onFail,
  }) async {
    try {
      
      final response = await http.get(Uri.parse(url),headers: {'Content-Type': 'application/json','Authorization':"Bearer ${token}"});
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        onSuccess(responseData);
      } if(response.statusCode==401){
        onFail('Login Session Expired');
      }else {
        onFail('HTTP GET request failed');
      }
    } catch (e) {
      onFail(e.toString());
    }
  }

  static Future<void> post(
    String endpointUrl,
    String token,
    dynamic postData, {
    required Function(dynamic response) onSuccess,
    required Function(String error) onFailure
  }) async {
    try {
      final response = await http.post(
        Uri.parse(endpointUrl),
        body: json.encode(postData),
        headers: {'Content-Type': 'application/json','Authorization':"Bearer ${token}"},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = json.decode(response.body);
        onSuccess(responseData);
      } else if(response.statusCode==401 && endpointUrl==loginUrl){
        onFailure("Invalid Credentials");
      }else if(response.statusCode==500 && endpointUrl==registrationUrl){
        onFailure(jsonDecode(response.body)['error']);
      }
      else {
        onFailure("Something went wrong!");
      }
    } catch (e) {
      onFailure(e.toString());
    }
  }


}
