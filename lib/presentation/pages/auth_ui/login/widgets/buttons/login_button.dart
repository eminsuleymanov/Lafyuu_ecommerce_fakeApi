import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce/cubits/login/login_cubit.dart';
import 'package:lafyuu_e_commerce/utils/helpers/navigate.dart';

import '../../../../../../cubits/products/home_cubit.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../../../../widgets/global_button.dart';
import '../../../../home/home_page.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigate.replace(
            context,
            BlocProvider<HomeCubit>(
              create: (BuildContext context) {
                return HomeCubit()..getProducts();
              },
              child: const HomePage(),
            ),
          );
        }
      },
      builder: (context, state) {
        return GlobalButton(
          text: AppTexts.signIn,
          onTap: () => cubit.checkAndLogin()
        );
      },
    );
  }
}
