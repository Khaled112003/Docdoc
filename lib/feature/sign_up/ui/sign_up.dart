import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/core/widgets/button_item.dart';
import 'package:daweny/feature/login/widgets/terms_condicitions.dart';
import 'package:daweny/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:daweny/feature/sign_up/ui/widget/already_have_account.dart';
import 'package:daweny/feature/sign_up/ui/widget/sign_up_bloc_listener.dart';
import 'package:daweny/feature/sign_up/ui/widget/sign_up_form.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                  S.of(context).signUp,
                  style: MangerStyle.font700wSize24
                      .copyWith(color: MangerColors.mainBlue),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  S.of(context).signUpDesc,
                  style: MangerStyle.font400wSize10,
                ),
                SizedBox(
                  height: 30.h,
                ),
               const SignupForm(),
                
                const SizedBox(
                  height: 30,
                ),
                ButtonItem(
                    text: S.of(context).createAccount,
                    onPressed: () {
                      validateThenDoSignUp(context);
                    }),
                const SizedBox(
                  height: 50,
                ),
               const TermsAndConditions(),
                const SizedBox(
                  height: 25,
                ),
               const AlreadyHaveAccount(),
                
                const SignupBlocListener()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoSignUp(BuildContext context) {
  // if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
    context.read<SignUpCubit>().emitSignupState();
  }
// }
