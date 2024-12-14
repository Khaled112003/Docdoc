import 'package:daweny/core/networking/api_error_handler.dart';
import 'package:daweny/core/networking/api_result.dart';
import 'package:daweny/core/networking/api_servise.dart';
import 'package:daweny/feature/login/data/models/login_request_body.dart';
import 'package:daweny/feature/login/data/models/login_respose.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);
  Future<ApiResult<LoginRespose>>login(LoginRequestBody loginRequestBody)async{
    try {
      var response =await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
      
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));

      
    }

  }
}