import 'package:bloc/bloc.dart';
import 'package:bookia_app/features/login/cubit/login_cubit.dart';
import 'package:bookia_app/features/register/data/repo/register_repo.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  Future<void> Register({required String username , 
 required String email ,
 required String password ,
 required String confirmPassword})async{
  emit(RegisterLoading());
  final bool response =await RegisterRepo.Register(
    username: username,
     email: email,
      password: password, 
      confirmPassword: confirmPassword);
      if(response){
        emit(RegisterSuccess());
      }else{
        emit(RegisterErorr());
      }
 }
}
