import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
Text("Already have an account yet?",style: MangerStyle.font400wSize10.copyWith(color: MangerColors.black),) ,
Text(" Sign Up ",style: MangerStyle.font600wSize13,)    ],);
  }
}