import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: AppColors.grey,
            // height: 36,
            thickness: .5,
          ),
        ),
        SizedBox(width: 20),
        Text(
          "OR",
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.grey),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Divider(
            thickness: .5,
            color: AppColors.grey,
            // height: 36,
          ),
        ),
      ],
    );
  }
}
