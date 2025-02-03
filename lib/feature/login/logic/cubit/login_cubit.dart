import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:daweny/feature/login/data/models/login_request_body.dart';
import 'package:daweny/feature/login/data/repos/login_repo.dart';
import 'package:daweny/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';

class LoginCubit extends Cubit<LoginState> {
  
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final LoginRepo loginRepo;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  Future<void> emitLoginState(LoginRequestBody loginRequest) async {
  log("Email: ${emailController.text}");
  log("Password: ${passwordController.text}");

  emit(const LoginState.loading());
  final response = await loginRepo.login(loginRequest);
  response.when(
    success: (loginResponse) {
      log("Login Success: ${loginResponse.userData!.token}");
      emit(LoginState.success(loginResponse));
    }, 
    failure: (error) {
      log("Login Failed: ${error.apiErrorModel.message}");
      emit(LoginState.failure(error: error.apiErrorModel.message ?? 'حدث خطأ غير متوقع'));
    }
  );
}

}
