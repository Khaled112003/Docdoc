part of 'home_cubit_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(SpecilzationsModel specilzationsModel) = Loaded;
  const factory HomeState.error(ErrorHandler error) = Error;
}
