part of 'home_cubit.dart';

abstract class HomeCubitState {}

final class HomeCubitInitial extends HomeCubitState {}

final class HomeLoading extends HomeCubitState {}

final class HomeSuccess extends HomeCubitState {
  HomeSuccess({required this.response, required this.categories});

  final List<ProductsResponse> response;
  final List<CategoryResponse> categories;
}

final class HomeError extends HomeCubitState {}

final class HomeNetworkError extends HomeCubitState {}
