import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../cubits/register/register_cubit.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../../../../widgets/global_input.dart';

class RegisterEmailInput extends StatelessWidget {
  const RegisterEmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return GlobalInput(
      text: AppTexts.emailPlaceholder,
      controller: cubit.emailController,
      prefixIcon: Icons.mail_outline_rounded,
    );
  }
}
