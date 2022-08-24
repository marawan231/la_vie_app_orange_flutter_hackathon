import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:la_vie_app_orange_hackathone/core/resources/constants.dart';
import 'package:la_vie_app_orange_hackathone/core/web_services/web_services.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/business_logic/cubit/auth_cubit.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/data/repository/auth_repository.dart';
import 'package:la_vie_app_orange_hackathone/features/home/business_logic/cubit/plants_cubit.dart';
import 'package:la_vie_app_orange_hackathone/features/home/data/repository/plants_repository.dart';

final getIt = GetIt.instance;

void initGetIt() {
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit(getIt()));
  getIt.registerLazySingleton<AuthRepoistry>(() => AuthRepoistry(getIt()));
  getIt.registerLazySingleton<WebServices>(
      () => WebServices(createAndSetupDio()));
  getIt.registerLazySingleton<PlantsCubit>(() => PlantsCubit(getIt()));
  getIt
      .registerLazySingleton<PlantsRepository>(() => PlantsRepository(getIt()));
}

Dio createAndSetupDio() {
  Dio dio = Dio();
  dio
    ..options.connectTimeout = 1 * 1000
    ..options.receiveTimeout = 10 * 1000
    ..options.baseUrl = baseUrl;

  dio.interceptors.add(LogInterceptor(
    requestBody: true,
    error: true,
    requestHeader: false,
    responseHeader: false,
    responseBody: true,
    request: true,
  ));
  return dio;
}
