import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce/cubits/login/login_cubit.dart';
import 'package:lafyuu_e_commerce/presentation/pages/auth_ui/login/login_page.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../../../../../utils/helpers/navigate.dart';
import '../../../../../widgets/global_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          Navigate.replace(
              context,
               BlocProvider(
                create: (context) => LoginCubit(),
                child: const LoginPage(),
              ));
        }
        else{
          log("Error");
        }
      },
      builder: (context, state) {
        return GlobalButton(
          text: AppTexts.signUp,
          onTap: () => cubit.checkAndRegister(),
          isLoading: state is RegisterLoading,
        );
      },
    );
  }
}
