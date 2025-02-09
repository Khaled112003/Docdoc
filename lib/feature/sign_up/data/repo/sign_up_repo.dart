import 'package:daweny/core/networking/api_error_handler.dart';
import 'package:daweny/core/networking/api_result.dart';
import 'package:daweny/core/networking/api_servise.dart';
import 'package:daweny/feature/sign_up/data/model/sign_up_request.dart';
import 'package:daweny/feature/sign_up/data/model/sign_up_response.dart';

class SignUpRepo {
  final ApiService apiService;

  SignUpRepo( this.apiService);
  Future<ApiResult<SignUpResponse>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      var response = await apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
