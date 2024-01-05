import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_colors.dart';

class AuthLogoTitles extends StatelessWidget {

  const AuthLogoTitles({ super.key, required this.title, required this.subtitle, });
  final String title;
  final String subtitle;
   @override
   Widget build(BuildContext context) {
       return Column(
        children: [
           SvgPicture.asset(AppAssets.appLogoDark),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                ),
              ),
        ],
       );
  }
}