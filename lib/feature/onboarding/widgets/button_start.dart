import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:daweny/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ItemButtonStarted extends StatelessWidget {
  const ItemButtonStarted({
    super.key, 
  });
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 25),
      child: Container(
        height: 52,
        
        width: 300.w,
        decoration: BoxDecoration(
            color: MangerColors.mainBlue,
            borderRadius: BorderRadius.circular(20)),
        child: MaterialButton(
          onPressed: (){
            GoRouter.of(context).go("/Login");
          },
          child: Text(
           S.of(context).getStarted,
            style:MangerStyle.font600wSize18
          ),
        ),
      ),
    );
  }
}