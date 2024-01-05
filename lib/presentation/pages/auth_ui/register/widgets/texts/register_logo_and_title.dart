import 'package:flutter/material.dart';

import '../../../../../../utils/constants/app_texts.dart';
import '../../../widgets/auth_logo_titles.dart';

class RegisterLogoAndTitle extends StatelessWidget {
  const RegisterLogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthLogoTitles(
      title: AppTexts.letGetStarted,
      subtitle: AppTexts.createNewAccount,
    );
  }
}
