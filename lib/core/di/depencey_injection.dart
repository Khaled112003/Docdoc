import 'package:daweny/core/networking/api_servise.dart';
import 'package:daweny/core/networking/dio_factory.dart';
import 'package:daweny/feature/login/data/repos/login_repo.dart';
import 'package:daweny/feature/login/logic/cubit/login_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));


  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}