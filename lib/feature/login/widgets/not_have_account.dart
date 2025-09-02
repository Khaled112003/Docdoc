import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotHaveAccount extends StatelessWidget {
  const NotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).notHaveAccount,
          style: MangerStyle.font400wSize10.copyWith(color: MangerColors.black),
        ),
        GestureDetector(onTap: () {
          context.push("/signup");
        },
          child: Text(
            S.of(context).signUp,
            style: MangerStyle.font600wSize13,
          ),
        )
      ],
    );
  }
}
