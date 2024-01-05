import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu_e_commerce/data/models/auth/auth_response.dart';
import 'package:lafyuu_e_commerce/data/services/login_service.dart';
import 'package:lafyuu_e_commerce/service_locator.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();

  late final formKey = GlobalKey<FormState>();

  final LoginService _loginService = getIt.get<LoginService>();

  void _login() async {
    log('login');
    try {
      emit(LoginLoading());
      final AuthResponse? response = await _loginService.login(
          email: emailController.text, password: passwordController.text);
      if (response is AuthResponse) {
        emit(LoginSuccess());
      } else {
        emit(LoginError());
      }
    } on SocketException catch (_) {
      emit(LoginNetworkError());
    } catch (e) {
      emit(LoginError());
    }
  }

   void checkAndLogin() {
    if ((formKey.currentState?.validate() ?? false) ) {
      _login();
    } else {
      log("Error");
    }
  }

  @override
  Future<void> close() {
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
