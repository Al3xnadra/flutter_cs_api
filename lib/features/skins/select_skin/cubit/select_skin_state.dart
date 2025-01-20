part of 'select_skin_cubit.dart';

@freezed
class SelectSkinState with _$SelectSkinState {
  const factory SelectSkinState({
    @Default([]) List<SkinModel> skinModel,
  }) = _SelectSkinState;
}
