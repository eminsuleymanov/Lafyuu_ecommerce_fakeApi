import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_sizedboxes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.icon,
    required this.categoryName,
  });

  final IconData icon;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8),
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(BorderSide(color: AppColors.lightGrey)),
              // color: AppColors.green,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                icon,
                color: AppColors.primaryBlue,
              ),
            ),
          ),
          AppSizedboxes.h8,
          SizedBox(
            width: 70,
            child: Text(
              
              categoryName,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
