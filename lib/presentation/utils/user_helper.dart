import 'dart:convert';

import 'package:nasi_paipon/app/index.dart';


class UserHelper{


  static Future<void> getCurrentUser({onSuccess,onTokenFailure,onError}) async {
    String? token = await SharedPreferencesUtil.getUserToken();
    if(token==null){
      onTokenFailure();
      return;
    }
    HttpUtil.get(currentUserUrl,token,onFail: (err){
      print(err);
      onError(err);
      },onSuccess: (jsonObject){
      print(jsonObject);
      onSuccess(jsonObject);
    });
  }

  //logout function clear the user token in onSuccess with SharedPreferencesUtil.clear();
  static Future<void> logout({onSuccess,onFailure})async {
    String? token  = await SharedPreferencesUtil.getUserToken();
    HttpUtil.post(logoutUrl, token!, null, onSuccess: (data){
      //TODO  data clear and  redirection to login
    }, onFailure: onFailure);
  }


  //TODO use variable with concatenation in view_model read below
 /* onSuccess(jsonData);
  onFailure(String error);
  var data = {
    "first_name": "Zaman",
    "last_name":"Rajpoot",
    "email": "admin@nasipaipom.com ",
    "password": "12345678",
    "user_type": "user or agent",
    "phone":"03077045417"
  };
*/
  static Future<void> register({data,onSuccess,onFailure})async {
    HttpUtil.post(registrationUrl, '', {}, onSuccess: (responseJson){
      //user created and need to login to get access token
      //TODO redirect to login screen from view_model
      onSuccess("user created and need, you can login now");
    }, onFailure: onFailure);
  }

  //method for regions
  static void loadRegionsData({onSuccess,onError}) {
    HttpUtil.get(regionsUrl, '', onSuccess: (jsonResponse){
      List<Region> regions = jsonResponse.map((item) => Region.fromJson(item)).toList();
      onSuccess(regions);
    }, onFail:(error){onError(error);} );
  }


  
  //method for categories
  static void loadCategoriesData({onSuccess,onError}) {
    HttpUtil.get(categoriesUrl, '', onSuccess: (jsonResponse){
      List<dynamic> jsonList = jsonDecode(jsonResponse);
      List<Category> categories = jsonList.map((item) => Category.fromJson(item)).toList();
      onSuccess(categories);
    }, onFail:(error){onError(error);} );
  }

}