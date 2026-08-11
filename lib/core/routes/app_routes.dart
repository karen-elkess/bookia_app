

import 'package:bookia_app/core/routes/routes_names.dart';
import 'package:bookia_app/features/home/presentation/ui/home_screen.dart';
import 'package:bookia_app/features/login/cubit/login_cubit.dart';
import 'package:bookia_app/features/login/ui/login_screen.dart';
import 'package:bookia_app/features/register/presentations/cubit/register_cubit.dart';
import 'package:bookia_app/features/register/presentations/ui/widgets/register_screen.dart';
import 'package:bookia_app/features/welcome/presentation/ui/widgets/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {

 static MaterialPageRoute<dynamic>? onGenerateRoute(RouteSettings settings){

  switch (settings.name) {
    case RoutesNames.welcomeScreen:
    return MaterialPageRoute(builder:(context)=>WelcomeScreen());

    case RoutesNames.loginScreen:
    return MaterialPageRoute(
      builder:(context) =>  BlocProvider(
      create: (context) => LoginCubit(),
      child:LoginScreen(),
    ));

    case RoutesNames.registerScreen:
    return MaterialPageRoute(
      builder: (context) => BlocProvider(
      create: (context) => RegisterCubit(),
      child: RegisterScreen(),
    ));

    case RoutesNames.homeScreen:
    return MaterialPageRoute(builder: (context)=> HomeScreen());


    default:
    return MaterialPageRoute(
      builder: (context)=>
    Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
         Text("404 page not found"),
          ],
        ),
      ),
    )  
    );
    
  }

 }

}
 



