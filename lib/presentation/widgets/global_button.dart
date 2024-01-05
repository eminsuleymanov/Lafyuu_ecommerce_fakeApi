import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    this.onTap,
    required this.text,
    this.isLoading = false,
  });

  final String text;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 57,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primaryBlue,
        ),
        child: isLoading
            ? const CircularProgressIndicator.adaptive()
            : Text(
                text,
                style: const TextStyle(
                    color: AppColors.whiteMain,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
      ),
    );
  }
}
