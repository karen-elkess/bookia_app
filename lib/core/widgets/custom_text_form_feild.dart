

import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatefulWidget {
  final String hintText ;
  final TextInputType? keyboard;
  final bool? isPassword ;
  final TextEditingController? controller ;
    const CustomTextFormFeild({super.key, required this.hintText, this.keyboard, this.isPassword, TextStyle? style, this.controller  });
  @override
  State<CustomTextFormFeild> createState() => _CustomTextFormFeildState();
}
class _CustomTextFormFeildState extends State<CustomTextFormFeild> {
  bool isObscure=true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
    onTapOutside: (v){
        FocusScope.of(context).unfocus();
      } ,
      controller :widget.controller,
      keyboardType: widget.keyboard,
      obscureText:(widget.isPassword ?? false) && isObscure ,
      
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: (widget.isPassword ?? false) ? InkWell(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: Icon(
                  isObscure ? 
                  Icons.visibility_off : Icons.visibility,
                ),
              )
            : null,
      ),
    );
  }
}
