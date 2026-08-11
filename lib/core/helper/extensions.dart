

import 'package:flutter/material.dart';

extension Navigations on BuildContext {

  Future pushNamed(String route ){
  return Navigator.pushNamed(this , route);
  }

  
  Future<dynamic>pushNamedAndRemoveUntil(String routeName ){
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (v)=>false);
  }

  dynamic pop() {
  return Navigator.pop(this);
  }

}









// extension EmailValidator on String {

//  bool isEmail (){
//   return this.contains('@') && this.contains('.') ; 
//  }
// }


// isEmail();