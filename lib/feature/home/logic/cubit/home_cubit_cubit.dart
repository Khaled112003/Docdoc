import 'package:bloc/bloc.dart';
import 'package:daweny/core/networking/api_error_handler.dart';
import 'package:daweny/feature/home/data/models/specilzations_model.dart';
import 'package:daweny/feature/home/data/repo/home_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit_state.dart';
part 'home_cubit_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeCubitState> {
  HomeCubit(this.homeRepo) : super(const HomeCubitState.initial());
  final HomeRepo homeRepo;
  Future<void> getSpecialties() async {
    emit(const HomeCubitState.loading());
    final result = await homeRepo.getSpecialties();
    result.when(
      success: (specilzationsModel) {
        emit(HomeCubitState.loaded(specilzationsModel));
      },
      failure: (error) {
        emit(HomeCubitState.error(ErrorHandler.handle(error)));
      },
    );
  }
}
