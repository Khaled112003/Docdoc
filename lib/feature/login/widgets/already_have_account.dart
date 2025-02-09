import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have account.",
          style: MangerStyle.font400wSize10.copyWith(color: MangerColors.black),
        ),
        GestureDetector(onTap: () {
          context.push("/signup");
        },
          child: Text(
            " Sign Up ",
            style: MangerStyle.font600wSize13,
          ),
        )
      ],
    );
  }
}
