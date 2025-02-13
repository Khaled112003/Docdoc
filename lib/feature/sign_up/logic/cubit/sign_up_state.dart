import 'package:daweny/core/networking/api_errors_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;
   const factory SignUpState.loading() = Loading;
    const factory SignUpState.failure(ApiErrorModel apiErrorModel) = Failure;
     const factory SignUpState.success(T data) = Succcess<T>;
}


