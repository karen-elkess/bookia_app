

import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackButton extends StatelessWidget {
  const BackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
       margin: EdgeInsetsDirectional.only(start: 20.r,end: 20.r,top:12 ),
       decoration: BoxDecoration(
        color: Color(0xffFFFFFF),

        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: AppColors.borderColor,
        )
       ), 
       child: Icon(Icons.arrow_back_ios_new,
       size: 40 ,),
      ),
    );
  }
}