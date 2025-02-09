import 'dart:developer';

import 'package:daweny/core/helpers/spacing.dart';
import 'package:daweny/feature/home/logic/cubit/home_cubit.dart';
import 'package:daweny/feature/home/ui/widget/doctor_specility_listview.dart';
import 'package:daweny/feature/home/ui/widget/recommendations_doctors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class specilizationAndDoctorsBlocBuilder extends StatelessWidget {
  const specilizationAndDoctorsBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is Loading || current is Error || current is Loaded,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return SizedBox();
          },
          loaded: (specilzationList) {
            final specializationDataList = specilzationList;
            return Expanded(
              child: Column(
                children: [
                  DoctorSpecilityListView(
                      specializationDataList:
                          specializationDataList ?? []),
                          verticalSpace( 8),
                  DoctorsListView(
                    doctors: specializationDataList![0]?.doctors,
                  ),
                ],
              ),
            );
          },
          loading: () {
            return const Center(child: CircularProgressIndicator());
          },
          error: (error) {
            log("Error1 $error");
            String? errorMessage = error.apiErrorModel.message;
            return Center(child: Text("Error: $errorMessage"));
          },
        );
      },
    );
  }
}
