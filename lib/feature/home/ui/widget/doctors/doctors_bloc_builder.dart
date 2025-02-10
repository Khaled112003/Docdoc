import 'package:daweny/feature/home/logic/cubit/home_cubit.dart';
import 'package:daweny/feature/home/ui/widget/doctors/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsError || current is DoctorsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return SizedBox();
          },
          doctorsSuccess: (doctorsList) {
            
            return setupSuccess(doctorsList);
          },
          doctorsError: (error) {
            String? errorMessage = error.apiErrorModel.message;
            return Center(child: Text("Error: $errorMessage"));
          },
        );
      },
    );
  }
}

Widget setupSuccess(doctorsList) {
  return DoctorsListView(
    doctors:doctorsList ,
  );
}
