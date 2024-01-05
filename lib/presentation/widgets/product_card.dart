import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/presentation/widgets/product_rating_bar.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_colors.dart';
import 'package:lafyuu_e_commerce/utils/constants/app_sizedboxes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.productPrice,
    this.productDiscountedPrice, 
    required this.rating,
  });
  final String productImage;
  final String productTitle;
  final double productPrice;
  final double? productDiscountedPrice;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 270,
      width: 170,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: AppColors.lightGrey,
            width: 1,
          )),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 132,
              width: 132,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.grey,
                image: DecorationImage(
                    image: NetworkImage(productImage), fit: BoxFit.fill),
              ),
            ),
            AppSizedboxes.h16,
            Text(
              productTitle,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: AppColors.darkBlue),
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
            AppSizedboxes.h12,
            ProductRatingBar(rating: rating),
            AppSizedboxes.h12,
            Text(
              '\$$productDiscountedPrice',
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.primaryBlue,
              ),
            ),
            AppSizedboxes.h12,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '\$$productPrice',
                  style: const TextStyle(
                      color: Color(0xFF9098B1),
                      decoration: TextDecoration.lineThrough),
                ),
                AppSizedboxes.w12,
                const Text(
                  '24% Off',
                  style: TextStyle(
                    color: Color(0xFFFB7181),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            //STARS
          ]),
    );
    // SizedBox(
    //   height: 240,
    //   child: DecoratedBox(
    //     decoration: BoxDecoration(
    //         // color: AppColors.grey,
    //         borderRadius: BorderRadius.circular(10),
    //         border: Border.all(color: AppColors.grey),
    //         image: const DecorationImage(
    //           image: AssetImage(
    //             AppAssets.product1,
    //           ),
    //           fit: BoxFit.cover,
    //         )),
    //     //Text infos
    //     child: const Column(),
    //   ),
    // );
  }
}
