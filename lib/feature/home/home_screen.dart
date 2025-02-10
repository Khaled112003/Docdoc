import 'dart:developer';

import 'package:daweny/core/helpers/spacing.dart';
import 'package:daweny/feature/home/logic/cubit/home_cubit_cubit.dart';

import 'package:daweny/feature/home/ui/widget/doctor_specility_listview.dart';
import 'package:daweny/feature/home/ui/widget/doctors_blue_container.dart';
import 'package:daweny/feature/home/ui/widget/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/widget/recommendations_doctors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              const HomeAppbar(),
              const DoctorsBlueContainer(),
              verticalSpace(15),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) =>
                    current is Loading || current is Error || current is Loaded,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return SizedBox();
                    },
                    loaded: (specilzationsModel) {
                      var specializationDataList =
                          specilzationsModel.specializationDataList;
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorSpecilityListView(
                                specializationDataList:
                                    specializationDataList ?? []),
                                    verticalSpace( 8),
                            DoctorsListView(
                              doctors: specializationDataList![0].doctors,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
