import 'dart:convert';

import 'package:http/http.dart';
import 'package:lafyuu_e_commerce/data/models/category_response.dart';

import '../../utils/constants/endpoints.dart';

class CategoryService {
  Future<List<CategoryResponse>> getCategories() async {
    final Uri uri = Uri.parse(Endpoints.categories);
    final Response response = await get(uri);
    
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      final categories =
          data.map((e) => CategoryResponse.fromJson(e)).toList();

      return categories;
    }

   throw Exception('Category error occured');
  }
}