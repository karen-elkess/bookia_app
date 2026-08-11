import 'package:bloc/bloc.dart';
import 'package:bookia_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';


part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  ThemeData appTheme =AppTheme.lightTheme;

  void changeMode (){
    if(appTheme.brightness== Brightness.light){
      appTheme=AppTheme.darkTheme;
    }else{
      appTheme=AppTheme.lightTheme;
    }

    emit(ChangeState(appTheme));
  }
}
