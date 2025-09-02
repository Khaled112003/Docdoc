import 'package:daweny/core/networking/api_constant.dart';
import 'package:daweny/feature/home/data/models/specilzations_model.dart';
import 'package:daweny/feature/login/data/models/login_request_body.dart';
import 'package:daweny/feature/login/data/models/login_respose.dart';
import 'package:daweny/feature/sign_up/data/model/sign_up_request.dart';
import 'package:daweny/feature/sign_up/data/model/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_servise.g.dart';

@RestApi(baseUrl:ApiConstant.apiBaseUrl)
abstract class ApiService{
  factory ApiService(Dio dio,{String baseUrl})=_ApiService;
@POST(ApiConstant.login)
  Future<LoginRespose> login(@Body() LoginRequestBody loginRequestBody);
  @POST(ApiConstant.signUp)
  Future<SignUpResponse> signUp(@Body() SignUpRequestBody signUpRequestBody);
  @GET(ApiConstant.getSpecialties)
  Future<SpecilzationsModel> getSpecialties();
  


}
 
