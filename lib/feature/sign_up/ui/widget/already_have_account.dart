import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/generated/l10n.dart';
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
         S.of(context).alreadyHaveAccount,
          style: MangerStyle.font400wSize10.copyWith(color: MangerColors.black)
        ),
        GestureDetector(
          onTap: () {
            context.pushReplacement("/login");
          },
          child: Text(
            S.of(context).login,
            style: MangerStyle.font600wSize13
          ),
        )
      ],
    );
  }
}