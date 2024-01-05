import 'package:flutter/material.dart';

import '../../../../utils/constants/app_colors.dart';

class AuthLinks extends StatelessWidget {
  const AuthLinks({
    super.key,
    required this.linkText,
    this.onPressed,
  });
  final String linkText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style:
          const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.zero)),
      child: Text(
        linkText,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: AppColors.primaryBlue),
      ),
    );
  }
}
