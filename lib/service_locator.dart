import 'package:get_it/get_it.dart';
import 'package:lafyuu_e_commerce/data/services/category_service.dart';
import 'package:lafyuu_e_commerce/data/services/product_service.dart';

import 'data/services/login_service.dart';
import 'data/services/register_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  getIt.registerLazySingleton(() => RegisterService());
  getIt.registerLazySingleton(() => LoginService());
  getIt.registerLazySingleton(() => ProductService());
  getIt.registerLazySingleton(() => CategoryService());
}
