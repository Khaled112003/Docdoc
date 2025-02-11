import 'package:daweny/feature/home/data/models/specialization_data_list.dart';
import 'package:daweny/feature/home/logic/cubit/home_cubit.dart';

import 'package:daweny/feature/home/ui/widget/specilization/specility_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecilityListView extends StatefulWidget {
  const SpecilityListView({super.key, required this.specializationDataList});
  final List<SpecializationDataList?> specializationDataList;

  @override
  State<SpecilityListView> createState() => _SpecilityListViewState();
}

class _SpecilityListViewState extends State<SpecilityListView> {
  var selectedSpecializationIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
          itemCount: widget.specializationDataList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedSpecializationIndex = index;
                });

                final specId = widget.specializationDataList[index]?.id;
                if (specId != null) {
                  context.read<HomeCubit>().getDoctorsBySpecilzationId(
                        specilizationId: specId,
                      );
                } else {
                  debugPrint("Error: Specialization ID is null");
                }
              },
              child: SpecilityItem(
                index: index,
                specializationDataList: widget.specializationDataList[index],
                selectedIndex: selectedSpecializationIndex,
              ),
            );
          }),
    );
  }
}
