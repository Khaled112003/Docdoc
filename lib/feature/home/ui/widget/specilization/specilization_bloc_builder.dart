import 'dart:developer';

import 'package:daweny/feature/home/logic/cubit/home_cubit.dart';
import 'package:daweny/feature/home/ui/widget/specilization/specility_listview.dart';

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
            return SizedBox();
          },
          loaded: (specilzationList) {
            try {
              return setupSuccess(specilzationList);
            } catch (e, stackTrace) {
              log("Error in loaded state: $e");
              log("StackTrace: $stackTrace");
              return Center(child: Text("Unexpected error occurred"));
            }
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

Widget setupSuccess(specializationDataList) {
  return SpecilityListView(
      specializationDataList: specializationDataList ?? []);
}
