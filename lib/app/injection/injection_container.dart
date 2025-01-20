import 'package:dio/dio.dart';
import 'package:flutter_cs_api/app/injection/injection_container.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  @Named('BaseUrl')
  String get baseUrl => 'https://bymykel.github.io/CSGO-API/api/en';

  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));
}
