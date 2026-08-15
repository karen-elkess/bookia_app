

import 'package:bookia_app/core/helper/token.dart';
import 'package:bookia_app/core/networking/dio_factory.dart';
import 'package:dio/dio.dart';

class LoginRepo {
 static Dio dio =DioFactory.dio!;

  static Future<bool> login({required String email ,required String password })async{
    try{
     var response =await dio.post("Login",
     data: {
      "email" :email ,
      "password": password,
     }
    );
    if(response.statusCode == 200){
      print("/////////////////////////////////////");
      print(response.data);
      await TokenHelper.saveUserToken(response.data['data']['token']);
      return true;
    }else{
      return false;
    }
  } catch(e){
    print("e");
    return false;
   } 
   }
  }