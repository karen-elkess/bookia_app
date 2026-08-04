

import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hintText ;

  const CustomTextFormFeild({super.key, required this.hintText, TextStyle? style});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: (v){
        FocusScope.of(context).unfocus();
      } ,
      decoration: InputDecoration(
        hintText: hintText
      ),
    );
   
    
  }
}