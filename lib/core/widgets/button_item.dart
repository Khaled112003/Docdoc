import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key, required this.text, required this.onPressed,
  });
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity.w,
      decoration: BoxDecoration(
          color: MangerColors.mainBlue,
          borderRadius: BorderRadius.circular(20)),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style:MangerStyle.font600wSize18.copyWith(color: MangerColors.wihte),
        ),
      ),
    );
  }
}