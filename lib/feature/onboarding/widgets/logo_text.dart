import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LogoAndText extends StatelessWidget {
  const LogoAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/logo.svg"),
        SizedBox(
          width: 12.w,
        ),
        Text(
          'Docdoc',
          style: MangerStyle.font700wSize24,
        )
      ],
    );
  }
}