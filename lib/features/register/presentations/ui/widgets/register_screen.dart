import 'package:bookia_app/core/helper/app_dialogs.dart';
import 'package:bookia_app/core/helper/extensions.dart';
import 'package:bookia_app/core/routes/routes_names.dart';
import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookia_app/features/register/presentations/cubit/register_cubit.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var usernameController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: BlocListener<RegisterCubit, RegisterState>(
              listener: (context, state) {
                if(state is RegisterLoading){
                   AppDialogs.loadingDialog(context);
                }else if(state is RegisterSuccess){
                  context.pushNamedAndRemoveUntil(RoutesNames.homeScreen);
                }else{
                  context.pop();
                  AppDialogs.errorDialog(context);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BackButton(),
                  Text(
                    LocaleKeys.HelloRegisterSentence.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 25),
                  CustomTextFormFeild(
                    hintText: LocaleKeys.username.tr(),
                    style: Theme.of(context).textTheme.titleSmall,
                    controller: usernameController,
                  ),
                  SizedBox(height: 15),
                  CustomTextFormFeild(
                    hintText: LocaleKeys.emailHintText.tr(),
                    style: Theme.of(context).textTheme.titleSmall,
                    controller: emailController,
                  ),
                  SizedBox(height: 15),
                  CustomTextFormFeild(
                    hintText: LocaleKeys.passwordHintText.tr(),
                    style: Theme.of(context).textTheme.titleSmall,
                    isPassword: true,
                    controller: passwordController,
                  ),
                  SizedBox(height: 15),
                  CustomTextFormFeild(
                    hintText: LocaleKeys.confirmPassword.tr(),
                    style: Theme.of(context).textTheme.titleSmall,
                    isPassword: true,
                    controller: confirmPasswordController,
                  ),
                  SizedBox(height: 25),
                  AppButton(
                    text: LocaleKeys.register.tr(),
                    style: Theme.of(context).textTheme.titleMedium,
                    onTap: () {
                      context.read<RegisterCubit>().Register(username: usernameController.text, email: emailController.text, password: passwordController.text, confirmPassword: confirmPasswordController.text);
                    },
                  ),
                  SizedBox(height: 250),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys.alreadyHave.tr(),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(height: 3),
                      Text(
                        LocaleKeys.loginNow.tr(),
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(color: AppColors.mainColor),
                      ),
                    ],
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
