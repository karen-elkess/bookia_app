

import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
 
 static ThemeData lightTheme =ThemeData(
     brightness: Brightness.light ,
     scaffoldBackgroundColor: AppColors.scaffoldColorLight,
     appBarTheme: AppBarTheme(
      backgroundColor: AppColors.scaffoldColorLight,),
     fontFamily: 'Dm' ,

     textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400
      ),
      titleLarge: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
      ),
      labelSmall: TextStyle(
        fontSize: 14,
        color: Color(0xff8391A1).withValues(),
        fontWeight: FontWeight.w200
      )
      ),

      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true
        ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.borderColor)
        ),

        focusedBorder: OutlineInputBorder(
         borderRadius:BorderRadius.circular(8.r) ,
         borderSide: BorderSide(color: AppColors.mainColor),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.borderColor)
        ),
      ),
      

 );

 static ThemeData darkTheme =ThemeData(
    
    brightness: Brightness.dark ,
    scaffoldBackgroundColor: AppColors.scaffoldColorDark,
    appBarTheme:AppBarTheme(
      backgroundColor: AppColors.scaffoldColorDark,),
      
    fontFamily: 'Dm',

    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.bold,
        
      ),
       titleSmall: TextStyle(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400
      ),
       titleLarge: TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w400,
      ),
     
    ),

    inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.black38,
        filled: true
        ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(
            color: AppColors.borderColor)
        ),

        focusedBorder: OutlineInputBorder(
         borderRadius:BorderRadius.circular(8.r) ,
         borderSide: BorderSide(color: AppColors.mainColor),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: AppColors.borderColor)
        ),
      ),
 );


}