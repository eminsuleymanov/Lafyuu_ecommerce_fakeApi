import 'package:flutter/material.dart';

import '../../../../../data/models/product_model.dart';
import '../../../../../data/models/product_hive/products_response.dart';
import '../../../../../utils/constants/app_sizedboxes.dart';
import '../../../../widgets/product_card.dart';
import '../../../../widgets/section_headings.dart';

class ProductSales extends StatelessWidget {
  const ProductSales({
    super.key,
    required this.heading,
    required this.headingLink,
    required this.onPressed,
    required this.products,
  });
  final String heading;
  final String headingLink;
  final void Function() onPressed;
  final List<ProductsResponse> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeadings(
          heading: heading,
          showActionButton: true,
          headingLink: headingLink,
          onPressed: onPressed,
        ),
        AppSizedboxes.h8,
        SizedBox(
          height: 320,
          // width: 200,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                final product = products[index];
                return ProductCard(
                  productImage: product.image,
                  productTitle: product.title,
                  productPrice: product.price,
                  productDiscountedPrice: product.price,
                  rating: product.rating.rate,
                );
              },
              separatorBuilder: (context, index) => AppSizedboxes.w12,
              itemCount: ProductModel.products.length),
        )
      ],
    );
  }
}
