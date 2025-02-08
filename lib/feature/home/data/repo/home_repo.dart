 import 'package:daweny/core/networking/api_error_handler.dart';
import 'package:daweny/core/networking/api_result.dart';
import 'package:daweny/core/networking/api_servise.dart';
import 'package:daweny/feature/home/data/models/specilzations_model.dart';

class HomeRepo {
  final ApiService _apiService;
  HomeRepo(this._apiService);
  Future<ApiResult<SpecilzationsModel>> getSpecialties() async {
    try {
      var response = await _apiService.getSpecialties();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
 }