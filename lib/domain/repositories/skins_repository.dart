import 'package:flutter_cs_api/data/remote_data_source/skins_remote_data_source.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';

class SkinsRepository {
  final SkinsRemoteRetrofitDataSource _skinsRemoteRetrofitDataSource;

  SkinsRepository(this._skinsRemoteRetrofitDataSource);

  Future<List<SkinModel>> getSkinsData(String name) async {
    final skinInfo = await _skinsRemoteRetrofitDataSource.getSkins();

    return skinInfo.where((skin) => skin.weapon.name == name).toList();
  }
}
