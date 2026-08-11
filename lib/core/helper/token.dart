

import 'package:bookia_app/core/helper/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenHelper {
  static Future<void> saveUserToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AppConstants.userTokenKey, token);
  }
}