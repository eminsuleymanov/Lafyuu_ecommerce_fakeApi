import 'package:flutter/material.dart';

import '../../../../../data/models/product_hive/products_response.dart';
import '../../../../widgets/product_card.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.products});
  final List<ProductsResponse> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 320,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          final ProductsResponse product = products[index];
          return ProductCard(
            productImage: product.image,
            productTitle: product.title,
            productPrice: product.price,
            productDiscountedPrice: product.price,
            rating: product.rating.rate,
          );
        });
  }
}
