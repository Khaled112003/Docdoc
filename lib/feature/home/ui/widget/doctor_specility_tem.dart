import 'package:daweny/core/helpers/spacing.dart';
import 'package:daweny/core/thems/colors/colors.dart';
import 'package:daweny/core/thems/fonts/manger_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specialization_data_list.dart';

class DoctorsspecilityListViewItem extends StatelessWidget {
  const DoctorsspecilityListViewItem({
    super.key,
    required this.index,
    this.specializationDataList,
  });
  final int index;
  final SpecializationDataList? specializationDataList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w,),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: MangerColors.lightBlue,
            child: Image.asset(
              'assets/images/nurse.png',
            ),
          ),
          verticalSpace(10),
          Text(
            specializationDataList?.name ?? "specilization",
            style: MangerStyle.font12Black400w,
          )
        ],
      ),
    );
  }
}