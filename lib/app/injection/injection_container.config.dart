// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_cs_api/app/injection/injection_container.dart' as _i523;
import 'package:flutter_cs_api/data/remote_data_source/skins_remote_data_source.dart'
    as _i687;
import 'package:flutter_cs_api/domain/repositories/skins_repository.dart'
    as _i665;
import 'package:flutter_cs_api/features/skins/select_skin/cubit/select_skin_cubit.dart'
    as _i364;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i361.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i687.SkinsRemoteRetrofitDataSource>(
        () => _i687.SkinsRemoteRetrofitDataSource(gh<_i361.Dio>()));
    gh.factory<_i665.SkinsRepository>(
        () => _i665.SkinsRepository(gh<_i687.SkinsRemoteRetrofitDataSource>()));
    gh.factory<_i364.SelectSkinCubit>(
        () => _i364.SelectSkinCubit(gh<_i665.SkinsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i523.RegisterModule {}
