import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';
import 'package:flutter_cs_api/domain/repositories/skins_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'select_skin_state.dart';
part 'select_skin_cubit.freezed.dart';

class SelectSkinCubit extends Cubit<SelectSkinState> {
  SelectSkinCubit(this.skinsRepository) : super(SelectSkinState());

  final SkinsRepository skinsRepository;

  Future<void> getSkinsData(String name) async {
    final skinModel = await skinsRepository.getSkinsData(name);
    emit(state.copyWith(skinModel: skinModel));
  }
}
