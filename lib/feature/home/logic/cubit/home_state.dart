part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(
      List<SpecializationDataList?>? specializationDataList) = Loaded;
  const factory HomeState.error(ApiErrorModel apiErrorModel) = Error;

  const factory HomeState.doctorsSuccess(List<DoctorsModel?>? doctorsList) =
      DoctorsSuccess;
  const factory HomeState.doctorsError(ApiErrorModel apiErrorModel) =
      DoctorsError;
}
