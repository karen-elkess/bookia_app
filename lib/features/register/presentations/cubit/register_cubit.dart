import 'package:bloc/bloc.dart';
import 'package:bookia_app/features/register/data/model/register_request_body.dart';
import 'package:bookia_app/features/register/data/repo/register_repo.dart';
import 'package:flutter/material.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> register( RegisterRequestBody body, {required String username})async{
  emit(RegisterLoading());
  final bool response =await RegisterRepo.register(body);
      if(response){
        emit(RegisterSuccess());
      }else{
        emit(RegisterErorr());
      }
 }
}
