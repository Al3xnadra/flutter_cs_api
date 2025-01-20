import 'package:dio/dio.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'skins_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class SkinsRemoteRetrofitDataSource {
  @factoryMethod
  factory SkinsRemoteRetrofitDataSource(Dio dio) =
      _SkinsRemoteRetrofitDataSource;

  @GET('/skins.json')
  Future<List<SkinModel>> getSkins();
}
