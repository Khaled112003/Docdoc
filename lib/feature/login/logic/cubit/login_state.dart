
import 'package:daweny/core/networking/api_errors_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
   const factory LoginState.loading() = Loading;
    const factory LoginState.failure(ApiErrorModel apiErrorModel) = Failure;
     const factory LoginState.success(T data) = Succcess<T>;
}
