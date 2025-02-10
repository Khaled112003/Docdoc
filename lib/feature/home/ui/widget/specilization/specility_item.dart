import 'package:daweny/core/helpers/spacing.dart';
import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../data/models/specialization_data_list.dart';

class SpecilityItem extends StatelessWidget {
  const SpecilityItem({
    super.key,
    required this.index,
    this.specializationDataList, required this.selectedIndex,
  });
  final int index;
  final int selectedIndex;
  
  final SpecializationDataList? specializationDataList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w,),
      child: Column(
        children: [
          index == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: MangerColors.mainBlue,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: MangerColors.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/specility.svg',
                      height: 42.h,
                      width: 42.w,
                    ),
                    
                  ),
                )
              : 
          CircleAvatar(
            radius: 28,
            backgroundColor: MangerColors.lightBlue,
            child: Image.asset(
              'assets/images/nurse.png',
            ),
          ),
          verticalSpace(10),
          Text(
            specializationDataList?.name ?? "specilization",
            style:index == selectedIndex
                ? MangerStyle.font14Black700w :MangerStyle.font12Black400w,
          )
        ],
      ),
    );
  }
}