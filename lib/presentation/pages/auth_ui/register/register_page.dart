import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce/cubits/register/register_cubit.dart';
import 'package:lafyuu_e_commerce/presentation/pages/auth_ui/widgets/auth_list_view.dart';

import '../../../../utils/constants/app_sizedboxes.dart';
import 'widgets/buttons/login_text_button.dart';
import 'widgets/buttons/register_button.dart';
import 'widgets/inputs/confirm_password_input.dart';
import 'widgets/inputs/full_name_input.dart';
import 'widgets/inputs/register_email_input.dart';
import 'widgets/inputs/register_password_input.dart';
import 'widgets/texts/register_logo_and_title.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Scaffold(
      body: AuthListView(
        formKey: cubit.formKey,
        children: const [
          RegisterLogoAndTitle(),
          AppSizedboxes.h24,
          FullNameInput(),
          AppSizedboxes.h12,
          RegisterEmailInput(),
          AppSizedboxes.h12,
          RegisterPasswordInput(),
          AppSizedboxes.h12,
          ConfirmPasswordInput(),
          AppSizedboxes.h16,
          RegisterButton(),
          AppSizedboxes.h12,
          LoginTextButton()
        ],
      ),
    );
  }
}
