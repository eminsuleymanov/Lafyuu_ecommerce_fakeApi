import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({
    super.key,
    required this.svgIcon,
    required this.text,
  });

  final String svgIcon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyOpacity),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset(svgIcon),
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.grey,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
