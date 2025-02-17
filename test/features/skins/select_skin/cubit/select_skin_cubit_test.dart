import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_cs_api/domain/repositories/skins_repository.dart';
import 'package:flutter_cs_api/features/skins/select_skin/cubit/select_skin_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSkinsRepository extends Mock implements SkinsRepository {}

void main() {
  late SkinsRepository repository;
  late SelectSkinCubit sut;

  setUp(() {
    repository = MockSkinsRepository();
    sut = SelectSkinCubit(repository);
  });

  group('successful loading of data named', () {
    setUp(() {
      when(() => repository.getSkinsData('name')).thenAnswer((_) async => []);
    });

    blocTest<SelectSkinCubit, SelectSkinState>(
      'should emit result',
      build: () => sut,
      act: (cubit) => sut.getSkinsData('name'),
      expect: () => [
        SelectSkinState(skinModel: []),
      ],
    );
  });
}
