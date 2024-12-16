import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';

class PasswordVaildation extends StatelessWidget {
  const PasswordVaildation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialCharacters,
      required this.minLenght});

  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacters;
  final bool minLenght;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        const SizedBox(
          height: 3,
        ),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        const SizedBox(
          height: 3,
        ),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacters),
        const SizedBox(
          height: 3,
        ),
        buildValidationRow('At least 1 number', hasNumber),
        const SizedBox(
          height: 3,
        ),
        buildValidationRow('At least 8 characters long', minLenght),
      ],
    );
  }
}

Widget buildValidationRow(String text, bool hasValidated) {
  return Row(
    children: [
      const CircleAvatar(
        radius: 2.5,
        backgroundColor: MangerColors.gray,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        text,
        style: MangerStyle.fontW400Size13Blue.copyWith(
          decoration: hasValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: hasValidated ? MangerColors.gray : MangerColors.black,
        ),
      )
    ],
  );
}
