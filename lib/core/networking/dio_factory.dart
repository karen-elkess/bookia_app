

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
 static Dio? dio ;

 static init(){
  dio = Dio(
    BaseOptions(
      baseUrl: "https://codingarabic.online/api/",
      connectTimeout: Duration(seconds: 30),
    )
  );
    dio!.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
        enabled: kDebugMode,
        filter: (options, args){
            // don't print requests with uris containing '/posts' 
            if(options.path.contains('/posts')){
              return false;
            }
            return !args.isResponse || !args.hasUint8ListData;
        }
       )  
     );
    }
  }
