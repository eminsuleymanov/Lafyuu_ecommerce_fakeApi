import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu_e_commerce/data/models/product_hive/products_response.dart';
import 'package:lafyuu_e_commerce/utils/constants/endpoints.dart';

class ProductService {
  Future<List<ProductsResponse>?> getProducts() async {
    final Uri uri = Uri.parse(Endpoints.flash); //products olmalidi
    final Response response = await get(uri);
    
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final List<ProductsResponse> products =
          data.map((e) => ProductsResponse.fromJson(e)).toList();

      return products;
    }

    return null;
  }
}
