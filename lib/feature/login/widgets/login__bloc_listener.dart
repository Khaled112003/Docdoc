import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/feature/login/logic/cubit/login_cubit.dart';
import 'package:daweny/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Succcess || current is Failure,
      listener: (context, state) {
        debugPrint("LoginBlocListener State: $state");

        state.whenOrNull(
          success: (loginResponse) {
            debugPrint("Navigating to Home...");
            context.pop();
            context.go("/");
          },
          failure: (error) {
            debugPrint("Login Error: $error");
            setupErrorState(context, error);
          },
          loading: () {
            debugPrint("Showing Loading Indicator...");
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: MangerColors.mainBlue,
                ),
              ),
            );
          },
        );
      },
      child: const SizedBox(),
    );
  }
}

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: MangerStyle.font15DarkBlueMedium,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: MangerStyle.font14BlueSemiBold,
          ),
        ),
      ],
    ),
  );
}
