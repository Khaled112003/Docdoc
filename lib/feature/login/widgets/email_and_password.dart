import 'package:daweny/core/helpers/app_regex.dart';
import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/widgets/textfeild_item.dart';
import 'package:daweny/feature/login/logic/cubit/login_cubit.dart';
import 'package:daweny/core/widgets/password_vaildation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool _obscureText = true;
  bool hasLowercase = false;
  bool hasUppercase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;
  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordControllerListener();
  }
  

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowercase = AppRegex.hasLowerCase(passwordController.text);
        hasUppercase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<LoginCubit>().formKey,
        child: Column(
          children: [
            ItemTextField(
              controller: context.read<LoginCubit>().emailController,
              validator: (data) {
                if (data == null || data.isEmpty|| !AppRegex.isEmailValid(data)) {
                  return 'Please enter a valid email';
                }
                return null;
              },
              hintText: 'Email',
            ),
            const SizedBox(
              height: 10,
            ),
            ItemTextField(
              controller: context.read<LoginCubit>().passwordController,
              validator: (data) {
                if (data == null || data.isEmpty) {
                  return 'Please enter a valid password';
                }
                return null;
              },
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    _obscureText
                        ? CupertinoIcons.eye
                        : CupertinoIcons.eye_slash,
                    size: 18,
                    color: MangerColors.black,
                  )),
              hintText: 'Password',
              obscureText: _obscureText,
            ),
            const SizedBox(
              height: 18,
            ),
            PasswordVaildation(
                hasLowerCase: hasLowercase,
                hasUpperCase: hasUppercase,
                hasNumber: hasNumber,
                hasSpecialCharacters: hasSpecialCharacters,
                minLenght: hasMinLength)
          ],
        ));
  }
  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}


