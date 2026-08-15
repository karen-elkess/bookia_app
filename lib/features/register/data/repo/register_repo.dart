
import 'package:bookia_app/core/helper/token.dart';
import 'package:bookia_app/core/networking/dio_factory.dart';
import 'package:bookia_app/features/register/data/model/register_request_body.dart';
import 'package:dio/dio.dart';

class RegisterRepo {

    static Dio dio =DioFactory.dio!;

 static Future<bool> register (RegisterRequestBody body)async{
  
  try{
    var response = await dio.post("register",
    data: {
     "name": body.username,
    "email": body.email,
    "password": body.password,
    "password_confirmation": body.confirmPassword,
    "city":body.city,
    "address":body.address
    }
   );
   if(response.statusCode==201){
    print('////////////////////////////////////');
    print(response.data['data']['token']);
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
 