import 'dart:developer';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce/data/models/auth/auth_response.dart';
import 'package:lafyuu_e_commerce/data/services/register_service.dart';
import 'package:lafyuu_e_commerce/service_locator.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  late final fullNameController = TextEditingController();
  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  late final passwordAgainController = TextEditingController();

  late final formKey = GlobalKey<FormState>();

  final RegisterService _registerService = getIt.get<RegisterService>();

  void _register() async {
    try {
      emit(RegisterLoading());
      final AuthResponse? response = await _registerService.register(
        fullName: fullNameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      if (response is AuthResponse) {
        emit(RegisterSuccess());
      } else {
        emit(RegisterError());
      }
    } on SocketException catch (_) {
      emit(RegisterNetworkError());
    } catch (_) {
      emit(RegisterError());
    }
  }

  void checkAndRegister() {
    if ((formKey.currentState?.validate() ?? false) &&
        passwordController.text == passwordAgainController.text) {
      _register();
    } else {
      log("Errorrr");
    }
  }

  @override
  Future<void> close() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordAgainController.dispose();

    return super.close();
  }
}
