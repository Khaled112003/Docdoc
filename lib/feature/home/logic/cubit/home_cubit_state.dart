part of 'home_cubit_cubit.dart';

@freezed
class HomeCubitState with _$HomeCubitState {
  const factory HomeCubitState.initial() = _Initial;
  const factory HomeCubitState.loading() = _Loading;
  const factory HomeCubitState.loaded(SpecilzationsModel specilzationsModel) = _Loaded;
  const factory HomeCubitState.error(ErrorHandler error) = _Error;
}
