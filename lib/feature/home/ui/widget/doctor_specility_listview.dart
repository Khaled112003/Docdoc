
import 'package:daweny/feature/home/data/models/specialization_data_list.dart';

import 'package:daweny/feature/home/ui/widget/doctor_specility_tem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecilityListView extends StatelessWidget {
  const DoctorSpecilityListView({super.key, required this.specializationDataList});
  final List<SpecializationDataList?> specializationDataList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          itemCount: specializationDataList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return DoctorsspecilityListViewItem(
              index: index,
              specializationDataList: specializationDataList[index],
            );
          }),
    );
  }
}


