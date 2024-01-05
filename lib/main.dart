import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lafyuu_e_commerce/data/models/product_hive/products_response.dart';
import 'package:lafyuu_e_commerce/service_locator.dart';

import 'app.dart';
import 'data/models/auth/auth_response.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive
  ..registerAdapter(AuthResponseAdapter())
  ..registerAdapter(ProductsResponseAdapter())
  ..registerAdapter(RatingAdapter());

  await Hive.openBox<AuthResponse>('authBox');
  await Hive.openBox<List>('productResponseBox');
  await setupServiceLocator();
  runApp(const MyApp());
  
}



