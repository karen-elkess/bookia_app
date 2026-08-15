import 'package:bookia_app/bookia_app.dart';
import 'package:bookia_app/core/helper/app_constants.dart';
import 'package:bookia_app/core/networking/dio_factory.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  
  final String? token = prefs.getString(AppConstants.userTokenKey);

  DioFactory.init;
  runApp(
    EasyLocalization(
      supportedLocales: [
       Locale('en'), Locale('ar')],
       path: 'assets/translations',
       fallbackLocale: Locale('en'),
       child:  BookiaApp(
        token:token,
       )));
}

