import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:harry_potter/common/apis/apis.dart';
import '../services/network_service.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  final dio = Dio();
  final networkService = DioService(dio: dio);

  locator.registerLazySingleton<Network>(() {
    networkService.configuration(Apis.baseUrl);
    return networkService;
  });
}