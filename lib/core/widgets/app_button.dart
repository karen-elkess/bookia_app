


import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String text ;
  final Color? backgroundColor ;
  final void Function()? onTap;
  const AppButton({super.key, required this.text, this.backgroundColor, this.onTap, TextStyle? style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: backgroundColor??AppColors.mainColor,
      
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(text,
         style: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: backgroundColor==null?Colors.white : Colors.black
         )
      )
      ),
    );
  }
}