import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cs_api/domain/models/skin_model.dart';
import 'package:flutter_cs_api/domain/repositories/skins_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'searchbar_skin_state.dart';
part 'searchbar_skin_cubit.freezed.dart';

class SearchbarSkinCubit extends Cubit<SearchbarSkinState> {
  SearchbarSkinCubit(this._skinsRepository) : super(SearchbarSkinState());

  final SkinsRepository _skinsRepository;

  Future<void> listSkin() async {
    final skinModel = await _skinsRepository.skinList();
    emit(state.copyWith(skinModel: skinModel));
  }

  void search(String name) {
    final filter = state.skinModel.where((skin) {
      final nameMatch = skin.name == name;

      return nameMatch;
    }).toList();

    emit(state.copyWith(skinModel: filter));
  }
}
