import 'package:daweny/core/thems/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MangerStyle {
  static TextStyle fontBoldSize32 = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 32.sp,
      color: MangerColors.mainBlue);
  static TextStyle font700wSize24 = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 24.sp, color: Colors.black);
  static TextStyle font400wSize10 = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 13.sp, color: Colors.grey);
  static TextStyle font600wSize18 = const TextStyle(
      color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600);
      
      static TextStyle font600wSize13 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 13.sp, color: MangerColors.mainBlue);
      static TextStyle font500wSize13 = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 13.sp, color: MangerColors.black);
}
