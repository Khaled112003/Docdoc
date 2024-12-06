import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/core/widgets/button_item.dart';
import 'package:daweny/core/widgets/textfeild_item.dart';
import 'package:daweny/feature/login/widgets/already_have_account.dart';
import 'package:daweny/feature/login/widgets/terms_condicitions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> formKey = GlobalKey(); 
   bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MangerColors.wihte,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 20),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back",
                    style: MangerStyle.font700wSize24
                        .copyWith(color: MangerColors.mainBlue),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: MangerStyle.font400wSize10,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const ItemTextField(
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                   ItemTextField(
                    suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                icon: Icon(
                  _obscureText ? CupertinoIcons.eye : CupertinoIcons.eye_slash,size: 18,
                  color: MangerColors.black,
                )),
                    hintText: 'Password',obscureText: _obscureText,
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Forget Password? ",
                        style: MangerStyle.font400wSize10
                            .copyWith(color: MangerColors.mainBlue),
                      )
                    ],
                  ),
                 const SizedBox(
                    height: 30,
                  ),
                  ButtonItem(text: "Login", onPressed: () {}),
                const SizedBox(
                    height: 50,
                  ),
                const  TermsAndConditions(),
                const SizedBox(
                    height: 25,
                  ),
               const AlreadyHaveAccount()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

