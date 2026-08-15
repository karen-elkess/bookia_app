import 'package:bloc/bloc.dart';
import 'package:bookia_app/features/login/data/repo/login_repo.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

   Future<void> login({required String email , required String password})async{

    final response =await LoginRepo.login(email: email, password: password);
    if(response){
      emit(Loginsuccess());
    }else{
      emit(Loginerror());
    }
  }
}
