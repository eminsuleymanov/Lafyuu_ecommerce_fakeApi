import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';

class BannerTexts extends StatelessWidget {
  const BannerTexts({
    super.key,
    required this.text,
    this.fontsize,
    this.fontWeight,
  });
  final String text;
  final double? fontsize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          textAlign: TextAlign.left,
          style: TextStyle(
              color: AppColors.white,
              fontSize: fontsize ?? 24,
              fontWeight: fontWeight ?? FontWeight.w700),
        ),
        // Text(),
      ],
    );
  }
}
