

import 'package:flutter/material.dart';

class AppDialogs {

   static Future<dynamic> loadingDialog(BuildContext context){

  return showDialog(context: context, builder:(context)=> Dialog(
    backgroundColor: Colors.transparent,
    child: Center(child: CircularProgressIndicator()),
  ) );
 }


  static Future <dynamic> errorDialog(BuildContext context){

    return showDialog(context: context, builder: (context)=> AlertDialog(
      title: Text("Error") ,
      content: Text("Error, Please try again") ,
    ));
  }
}