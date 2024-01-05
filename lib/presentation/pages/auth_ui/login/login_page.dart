import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/login/login_cubit.dart';
import '../../../../cubits/register/register_cubit.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_sizedboxes.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/helpers/navigate.dart';
import '../register/register_page.dart';
import '../widgets/auth_links.dart';
import '../widgets/auth_list_view.dart';
import '../widgets/auth_logo_titles.dart';
import 'widgets/app_divider.dart';
import 'widgets/buttons/login_button.dart';
import 'widgets/buttons/login_with.dart';
import 'widgets/inputs/login_email_input.dart';
import 'widgets/inputs/login_password_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Scaffold(
      body: AuthListView(
        formKey: cubit.formKey,
        children: [
          const AuthLogoTitles(
            title: AppTexts.welcome,
            subtitle: AppTexts.signInContinue,
          ),
          AppSizedboxes.h24,
          const LoginEmailInput(),
          AppSizedboxes.h12,
          const LoginPasswordInput(),
          AppSizedboxes.h16,
          const LoginButton(),
          AppSizedboxes.h12,
          const AppDivider(),
          AppSizedboxes.h12,
          const LoginWith(
            svgIcon: AppAssets.google,
            text: AppTexts.loginGoogle,
          ),
          AppSizedboxes.h12,
          const LoginWith(
            svgIcon: AppAssets.facebook,
            text: AppTexts.loginFacebook,
          ),
          AppSizedboxes.h12,
          Column(
            children: [
              AuthLinks(linkText: AppTexts.forgotPassword, onPressed: () {}),
              // AppSizedboxes.h12,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    AppTexts.dontHaveaccount,
                    style: TextStyle(
                      color: AppColors.grey,
                    ),
                  ),
                  AuthLinks(
                      linkText: AppTexts.registerBlue,
                      onPressed: () => Navigate.to(
                            context,
                            BlocProvider(
                              create: (context) => RegisterCubit(),
                              child: const RegisterPage(),
                            ),
                          )),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
