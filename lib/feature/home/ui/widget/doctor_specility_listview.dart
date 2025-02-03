import 'package:daweny/core/helpers/spacing.dart';
import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecilityListView extends StatelessWidget {
  const DoctorSpecilityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(itemCount: 8,
      scrollDirection:Axis.horizontal ,
        itemBuilder: (context, index) {
        return  Padding(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
          child: Column(
          
            children: [
                CircleAvatar(
                  radius: 30,
                  
                  backgroundColor: MangerColors.lightBlue,
                  child: Image.asset('assets/images/nurse.png',),
                  
                
              ),
              verticalSpace(10),
              Text("General",style: MangerStyle.font12Black400w,)

            ],
          ),
        );
      }),
    );
  }
}