import 'package:bookia_app/core/helper/app_dialogs.dart';
import 'package:bookia_app/core/helper/extensions.dart';
import 'package:bookia_app/core/routes/routes_names.dart';
import 'package:bookia_app/core/theme/app_colors.dart';
import 'package:bookia_app/core/widgets/app_button.dart';
import 'package:bookia_app/core/widgets/custom_text_form_feild.dart';
import 'package:bookia_app/features/login/cubit/login_cubit.dart';
import 'package:bookia_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose(){
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackButton()),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(

            child: BlocListener<LoginCubit, LoginState>(
              listener: (context, state) {
               if(state is Loginloading){
                AppDialogs.loadingDialog(context);
               }else if(state is Loginsuccess){
                context.pushNamedAndRemoveUntil(RoutesNames.homeScreen);
               }
               else{
                context.pop();
                 AppDialogs.errorDialog(context);
               }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    LocaleKeys.loginWelcomeSentence.tr(),
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 20.r),

                  CustomTextFormFeild(
                   hintText: LocaleKeys.emailHintText.tr(),
                   controller: emailController,
                   ),
                  SizedBox(height: 20.r),
                  CustomTextFormFeild(
                    hintText: LocaleKeys.passwordHintText.tr(),
                    controller: passwordController,
                    isPassword: true
                  ),
                  SizedBox(height: 15.r),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        LocaleKeys.forgotPassword.tr(),
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.r),
                  AppButton(
                    text: LocaleKeys.login.tr(),
                    style: Theme.of(context).textTheme.titleMedium,
                    onTap: () {
                      context.read<LoginCubit>().Login(email: emailController.text, password: passwordController.text);
                    },
                  ),
                  SizedBox(height: 35.r),
                  Row(
                    children: [
                      Expanded(child: Divider(thickness: 1, endIndent: 15)),
                      Text(
                        LocaleKeys.or.tr(),
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(width: 1),
                      Expanded(child: Divider(endIndent: 10)),
                    ],
                  ),
                  SizedBox(height: 250.r),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        LocaleKeys.dontHaveAccount.tr(),
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      SizedBox(width: 2),
                      Text(
                        LocaleKeys.registerNow.tr(),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.mainColor,
                        ),
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


