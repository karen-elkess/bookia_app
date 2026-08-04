

import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              Text(LocaleKeys.HelloRegisterSentence.tr(),style:Theme.of(context).textTheme.titleLarge ,),
              SizedBox(height: 25,),
              CustomTextFormFeild(hintText: LocaleKeys.username.tr(),style:Theme.of(context).textTheme.titleSmall ,),
              SizedBox(height: 15,),
              CustomTextFormFeild(hintText: LocaleKeys.emailHintText.tr(),style:Theme.of(context).textTheme.titleSmall ,),
              SizedBox(height: 15,),
              CustomTextFormFeild(hintText: LocaleKeys.passwordHintText.tr(),style:Theme.of(context).textTheme.titleSmall ,),
              SizedBox(height: 15,),
              CustomTextFormFeild(hintText: LocaleKeys.confirmPassword.tr(),style:Theme.of(context).textTheme.titleSmall ,),
              SizedBox(height: 25,),
              AppButton(text: LocaleKeys.register.tr(),style:Theme.of(context).textTheme.titleMedium ,),
              SizedBox(height: 250,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(LocaleKeys.alreadyHave.tr(),style:Theme.of(context).textTheme.titleMedium ,),
                  SizedBox(height: 3,),
                   Text(LocaleKeys.loginNow.tr(),style:Theme.of(context).textTheme.titleMedium?.copyWith(color: AppColors.mainColor),),

                  
                ],
              )
              

            ],
          ),
        ),
      ),
    );
  }
}