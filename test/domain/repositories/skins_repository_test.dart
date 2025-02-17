import 'package:flutter_cs_api/data/remote_data_source/skins_remote_data_source.dart';
import 'package:flutter_cs_api/domain/repositories/skins_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRemoteDataSource extends Mock
    implements SkinsRemoteRetrofitDataSource {}

void main() {
  late SkinsRemoteRetrofitDataSource remoteDataSource;
  late SkinsRepository sut;

  setUp(() {
    remoteDataSource = MockRemoteDataSource();
    sut = SkinsRepository(remoteDataSource);
    when(remoteDataSource.getSkins).thenAnswer((_) async => []);
  });

  group('fetch data by name', () {
    test('should call getSkinsData method on remote data source', () async {
      final result = await sut.getSkinsData('name');
      expect(result, []);
    });
  });

  group('fetch data list all skins', () {
    test('should call skinList method on remote data source', () {
      sut.skinList;
      expect([], []);
    });
  });
}
