import 'package:lafyuu_e_commerce/utils/constants/app_assets.dart';

class ProductModel {
  final String productTitle;
  final double productPrice;
  final double? productDiscountedPrice;
  final String productImage;

  ProductModel({
    required this.productTitle,
    required this.productPrice,
    required this.productDiscountedPrice,
    required this.productImage,
  });

  static final List<ProductModel> products = [
    ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
     ProductModel(
      productTitle: 'FS - QUILTED MAXI CROS...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product2,
    ),
     ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product3,
    ),
     ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
     ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product2,
    ),
    ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
    ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
    ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
    ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
    ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
    ProductModel(
      productTitle: 'FS - Nike Air Max 270 React...',
      productPrice: 534.33,
      productDiscountedPrice: 299.43,
      productImage: AppAssets.product1,
    ),
  ];
}
