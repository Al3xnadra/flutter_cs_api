import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_cs_api/domain/repositories/skins_repository.dart';
import 'package:flutter_cs_api/features/searchbar/cubit/searchbar_skin_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSkinsRepository extends Mock implements SkinsRepository {}

void main() {
  late SkinsRepository repository;
  late SearchbarSkinCubit sut;

  setUp(() {
    repository = MockSkinsRepository();
    sut = SearchbarSkinCubit(repository);
  });

  group('successful loading of skin list data', () {
    setUp(() {
      when(() => repository.skinList()).thenAnswer((_) async => []);
    });

    blocTest<SearchbarSkinCubit, SearchbarSkinState>(
      'should emit skin list',
      build: () => sut,
      act: (cubit) => sut.listSkin(),
      expect: () => [
        SearchbarSkinState(skinModel: []),
      ],
    );
  });
}
