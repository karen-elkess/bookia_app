
import 'package:bookia_app/core/routes/app_routes.dart';
import 'package:bookia_app/core/routes/routes_names.dart';
// import 'package:bookia_app/core/theme/app_theme.dart';
import 'package:bookia_app/core/theme/cubit/theme_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookiaApp extends StatelessWidget {
  final String? token;
  const BookiaApp({super.key, this.token});

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
       builder: (_ , child) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

       theme: context.read<ThemeCubit>().appTheme,

       onGenerateRoute: AppRoutes.onGenerateRoute,
        initialRoute:token== null ? RoutesNames.welcomeScreen : RoutesNames.homeScreen,
          );
          }
         )
        ); 
       }
    );
  }
}