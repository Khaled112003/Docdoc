import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:daweny/core/helpers/shared_pref_helper.dart';
import 'package:daweny/core/helpers/shared_pref_keys.dart';
import 'package:daweny/core/networking/api_errors_model.dart';
import 'package:daweny/core/networking/dio_factory.dart';
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
    success: (loginResponse) async {
      await saveUserToken(loginResponse.userData?.token??"");
      emit(LoginState.success(loginResponse));
    }, 
    failure: (apiErrorModel) {
      
      emit(LoginState.failure(apiErrorModel));
    }
  );
}
Future<void> saveUserToken(String token)async{
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.token, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }

}
