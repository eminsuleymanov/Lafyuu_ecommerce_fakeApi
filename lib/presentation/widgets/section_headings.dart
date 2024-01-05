import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';

class SectionHeadings extends StatelessWidget {
  const SectionHeadings({
    super.key,
    required this.heading,
    this.headingLink,
    this.showActionButton = true, this.onPressed,
  });

  final String heading;
  final String? headingLink;
  final bool showActionButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: const TextStyle(
            color: AppColors.darkBlue,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        if(showActionButton==true)
        TextButton(
          child: Text(headingLink!,
              style: const TextStyle(
                color: AppColors.primaryBlue,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              )),
          onPressed: () {},
        )
        
        
      ],
    );
  }
}
