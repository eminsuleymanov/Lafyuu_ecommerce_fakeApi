import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lafyuu_e_commerce/data/models/category_response.dart';
import 'package:lafyuu_e_commerce/data/models/product_hive/products_response.dart';
import 'package:lafyuu_e_commerce/data/services/category_service.dart';
import 'package:lafyuu_e_commerce/data/services/product_service.dart';
import 'package:lafyuu_e_commerce/service_locator.dart';

part 'home_cubit_state.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit() : super(HomeCubitInitial()) {
    _init();
  }

  final ProductService _productService = getIt.get<ProductService>();
  final CategoryService _categoryService = getIt.get<CategoryService>();
  late Box<List> productsBox;

  List<CategoryResponse>? categories;

  Future<void> _init() async {
    productsBox = await Hive.openBox("productResponseBox");
  }


  void getProducts() async {
    log('productsss');
    try {
      emit(HomeLoading());
      List<ProductsResponse>? result = await _productService.getProducts();
      final categories = await _categoryService.getCategories();  

      if (result != null) {
        log('$result');

        await productsBox.put('products', result);

        emit(
          HomeSuccess(categories: categories, response: result),
        );
      } else {
        emit(HomeError());
      }
    } catch (e) {
      log(e.toString());
      emit(HomeError());
    }
  }
}
