import 'dart:developer';

import 'package:daweny/core/helpers/spacing.dart';
import 'package:daweny/feature/home/logic/cubit/home_cubit.dart';
import 'package:daweny/feature/home/ui/widget/doctors/doctors_shimmer_loading.dart';
import 'package:daweny/feature/home/ui/widget/specilization/specility_listview.dart';
import 'package:daweny/feature/home/ui/widget/specilization/specility_shimmer_loading.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecilizationAndBlocBuilder extends StatelessWidget {
  const SpecilizationAndBlocBuilder({
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
            return const SizedBox();
          },
          loaded: (specilzationList) {
           
              return setupSuccess(specilzationList);
           
          },
          loading: () {
            return setupLoading();
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
Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

Widget setupSuccess(specializationDataList) {
  return SpecilityListView(
      specializationDataList: specializationDataList ?? []);
}
