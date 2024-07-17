import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_tech_summit_task/core/utils/api_service.dart';
import 'package:route_tech_summit_task/features/home/data/repos/home_repo_impl.dart';
import '../../../features/home/data/repos/home_repo.dart';

GetIt sl = GetIt.instance;

class ServicesLocator {
  void init() {
    sl.registerLazySingleton<Dio>(() => Dio());
    sl.registerLazySingleton<ApiServices>(() => ApiServices(sl()));
    sl.registerLazySingleton<HomeRepo>(() => HomeRepoImplementation(sl()));
  }
}
