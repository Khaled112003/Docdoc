import 'package:bloc/bloc.dart';

import 'package:daweny/core/networking/api_error_handler.dart';
import 'package:daweny/feature/home/data/models/doctos_model.dart';
import 'package:daweny/feature/home/data/models/specialization_data_list.dart';
import 'package:daweny/feature/home/data/repo/home_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  final HomeRepo homeRepo;
  List<SpecializationDataList?>? specilzationList = [];
  Future<void> getSpecialties() async {
    emit(const HomeState.loading());
    final result = await homeRepo.getSpecialties();
    result.when(
      success: (specilzationsModel) {
        specilzationList = specilzationsModel.specializationDataList ?? [];
        getDoctorsBySpecilzationId(
            specilizationId: specilzationList?.first?.id);

        emit(HomeState.loaded(specilzationsModel.specializationDataList));
      },
      failure: (error) {
        emit(HomeState.error(ErrorHandler.handle(error)));
      },
    );
  }

  getDoctorsBySpecilzationId({required int? specilizationId}) {
  if (specilizationId == null) {
    emit(HomeState.doctorsError(ErrorHandler.handle("Invalid Specialization ID")));
    return;
  }

  List<DoctorsModel?>? filterDoctors = filterSpecilzationList(specilizationId);
  
  if (filterDoctors != null && filterDoctors.isNotEmpty) {
    emit(HomeState.doctorsSuccess(filterDoctors));
  } else {
    emit(HomeState.doctorsError(ErrorHandler.handle("No Doctors Found")));
  }
}

filterSpecilzationList(specilizationId) {
  return specilzationList
      ?.firstWhere(
        (specilization) => specilization?.id == specilizationId,
        orElse: () => SpecializationDataList(id: -1, name: "", doctors: []), // ✅ تجنب الخطأ
      )
      ?.doctors;
}

}
