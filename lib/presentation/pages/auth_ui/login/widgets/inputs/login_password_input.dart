import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../cubits/login/login_cubit.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../../../../widgets/global_input.dart';

class LoginPasswordInput extends StatelessWidget {
  const LoginPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return GlobalInput(
      text: AppTexts.passwordPlaceholder,
      controller: cubit.passwordController,
      isPassword: true,
      prefixIcon: Icons.lock_outline_rounded,
    );
  }
}
