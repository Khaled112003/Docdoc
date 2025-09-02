import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: S.of(context).termsAndPrivacyPrefix,
            style: MangerStyle.font400wSize10,
          ),
          TextSpan(
            text: S.of(context).terms,
            style: MangerStyle.font500wSize13,
          ),
          TextSpan(
            text: S.of(context).and,
            style: MangerStyle.font400wSize10,
          ),
          TextSpan(
            text: S.of(context).privacyPolicy,
            style: MangerStyle.font500wSize13,
          ),
        ],
      ),
    );
  }
}
