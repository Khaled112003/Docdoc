import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/core/widgets/button_item.dart';
import 'package:daweny/feature/login/data/models/login_request_body.dart';
import 'package:daweny/feature/login/logic/cubit/login_cubit.dart';
import 'package:daweny/feature/login/widgets/not_have_account.dart';
import 'package:daweny/feature/login/widgets/email_and_password.dart';
import 'package:daweny/feature/login/widgets/login__bloc_listener.dart';
import 'package:daweny/feature/login/widgets/terms_condicitions.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: MangerColors.white,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).welcomeBack,
                  style: MangerStyle.font700wSize24
                      .copyWith(color: MangerColors.mainBlue),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).welcomeBackDesc,
                  style: MangerStyle.font400wSize10,
                ),
                SizedBox(
                  height: 30.h,
                ),
                const EmailAndPassword(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      S.of(context).forgotPassword,
                      style: MangerStyle.font400wSize10
                          .copyWith(color: MangerColors.mainBlue),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ButtonItem(
                    text: S.of(context).login,
                    onPressed: () {
                      validateThenDoLogin(context);
                    }),
                const SizedBox(
                  height: 50,
                ),
                const TermsAndConditions(),
                const SizedBox(
                  height: 25,
                ),
                const NotHaveAccount(),
                const LoginBlocListner()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLoginState(
          LoginRequestBody(
            email: context.read<LoginCubit>().emailController.text,
            password: context.read<LoginCubit>().passwordController.text,
          ),
        );
  }
}
