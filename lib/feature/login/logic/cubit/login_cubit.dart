import 'package:bloc/bloc.dart';
import 'package:daweny/feature/login/data/models/login_request_body.dart';
import 'package:daweny/feature/login/data/repos/login_repo.dart';
import 'package:daweny/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  
  Future<void> emitLoginState(LoginRequestBody loginRequest) async {
    emit(const LoginState.loading());
    final response = await loginRepo.login(loginRequest);
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.failure(error: error.apiErrorModel.message ?? ''));
    });
  }
}
