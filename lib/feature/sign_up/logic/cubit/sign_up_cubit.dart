import 'package:bloc/bloc.dart';

import 'package:daweny/feature/sign_up/data/model/sign_up_request.dart';
import 'package:daweny/feature/sign_up/data/repo/sign_up_repo.dart';
import 'package:daweny/feature/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/widgets.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());
  final SignUpRepo _signUpRepo;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitSignupState() async {
    emit(const SignUpState.loading());
   final response = await _signUpRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (data) => emit(
        SignUpState.success(data),
      ),
      failure: (apiErrorModel) => emit(
        SignUpState.failure(apiErrorModel),
      ),
    );
  }
}
