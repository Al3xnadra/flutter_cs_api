part of 'searchbar_skin_cubit.dart';

@freezed
class SearchbarSkinState with _$SearchbarSkinState {
  const factory SearchbarSkinState({
    @Default([]) List<SkinModel> skinModel,
  }) = _SearchbarSkinState;
}
