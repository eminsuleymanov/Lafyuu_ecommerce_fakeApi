import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../cubits/login/login_cubit.dart';
import '../../../../../../utils/constants/app_colors.dart';
import '../../../../../../utils/constants/app_texts.dart';
import '../../../../../../utils/helpers/navigate.dart';
import '../../../login/login_page.dart';
import '../../../widgets/auth_links.dart';

class LoginTextButton extends StatelessWidget {
  const LoginTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          AppTexts.haveAccount,
          style: TextStyle(
            color: AppColors.grey,
          ),
        ),
        AuthLinks(
            linkText: AppTexts.signIn,
            onPressed: () => Navigate.replace(
                context,
                BlocProvider(
                  create: (BuildContext context) => LoginCubit(),
                  child: const LoginPage(),
                )
                // BlocProvider<HomeCubit>(
                //   create: (BuildContext context) {
                //     return HomeCubit()..getProducts();
                //   },
                //   child: const HomePage(),
                // ),
                )),
      ],
    );
  }
}
