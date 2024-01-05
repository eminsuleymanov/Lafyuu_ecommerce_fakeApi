part of 'register_cubit.dart';


sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class RegisterLoading extends RegisterState {}
final class RegisterSuccess extends RegisterState {}
final class RegisterError extends RegisterState {}
final class RegisterNetworkError extends RegisterState {}
