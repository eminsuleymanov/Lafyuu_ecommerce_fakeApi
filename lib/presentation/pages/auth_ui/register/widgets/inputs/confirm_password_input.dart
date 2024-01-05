import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../../../../widgets/global_input.dart';

class ConfirmPasswordInput extends StatelessWidget {
  const ConfirmPasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return GlobalInput(
      text: AppTexts.passwordAgain,
      controller: cubit.passwordAgainController,
      isPassword: true,
      prefixIcon: Icons.lock_outline_rounded,
    );
  }
}
