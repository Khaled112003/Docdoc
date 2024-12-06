import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(textAlign: TextAlign.center,
        text: TextSpan(
      children: [
        TextSpan(
            text: "By logging, you agree to our",
            style: MangerStyle.font400wSize10),
        TextSpan(
            text: " Terms & Conditions", style: MangerStyle.font500wSize13),
        TextSpan(text: " and", style: MangerStyle.font400wSize10),
        TextSpan(text: " PrivacyPolicy.", style: MangerStyle.font500wSize13),
      ],
    ));
  }
}
