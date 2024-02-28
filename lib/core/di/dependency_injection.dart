import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medical_app/core/networking/api_service.dart';
import 'package:medical_app/core/networking/dio_factory.dart';
import 'package:medical_app/features/sign_up/data/repos/sign_uo_repo.dart';
import 'package:medical_app/features/sign_up/logic/sign_up_cubit.dart';
import 'package:medical_app/features/login/data/repo/login_repo.dart';
import 'package:medical_app/features/login/logic/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));


}