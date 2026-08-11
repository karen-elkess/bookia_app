

import 'package:bookia_app/core/helper/extensions.dart';
import 'package:bookia_app/core/routes/routes_names.dart';
import 'package:bookia_app/core/theme/app_theme.dart';
import 'package:bookia_app/core/theme/cubit/theme_cubit.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/gen/assets.gen.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
         image: DecorationImage(
          fit: BoxFit.cover,
          image: 
          context.watch<ThemeCubit>().appTheme== AppTheme.darkTheme
          ?Assets.images.darkOnboarding.image().image
          : Assets.images.onboardingImage.image().image ),
           
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Assets.images.lightSplashLogo.image(),
                  SizedBox(height: 28.h,),
                  Text(LocaleKeys.welcome_text.tr(),
                  style: Theme.of(context).textTheme.titleLarge,),
                   SizedBox(height: 31.h,),
              
                  BlocBuilder<ThemeCubit, ThemeState>(
                    builder: (context, state) { 
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text(LocaleKeys.darkMode.tr(),
                        style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Switch.adaptive(value: context.watch<ThemeCubit>().appTheme.brightness==Brightness.dark, 
                        onChanged: (v){
                           context.read<ThemeCubit>().changeMode();
                        }),
                      ]
                     );
                    } ),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                      Text(LocaleKeys.englishLanguage.tr(),
                      style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Switch.adaptive(value: context.locale.languageCode=="en", onChanged: (v){
              
                        if(context.locale.languageCode=="ar"){
                          context.setLocale(Locale("en"));
                        }
                        else{
                          context.setLocale(Locale("ar"));
                        }
                      }),
                    ]
                  ),
                  SizedBox(height: 110.h,),
                  AppButton(text: LocaleKeys.login.tr(),
                  onTap: () {
                   context.pushNamed(RoutesNames.loginScreen);
                  },
                  ),
                  SizedBox(height: 16.h,),
                  AppButton(text: LocaleKeys.register.tr(),
                   backgroundColor: Colors.white ,
                   onTap: () {
                    context.pushNamed(RoutesNames.registerScreen);
                   }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}