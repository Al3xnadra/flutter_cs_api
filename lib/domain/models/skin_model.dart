import 'package:freezed_annotation/freezed_annotation.dart';

part 'skin_model.freezed.dart';
part 'skin_model.g.dart';

@freezed
class SkinModel with _$SkinModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SkinModel(
    final String id,
    final String name,
    final String description,
    final double? minFloat,
    final double? maxFloat,
    final String image,
    final bool? souvenir,
    final bool stattrak,
    final Category weapon,
    final Category category,
    final Rarity rarity,
    final List<Collection>? collections,
    final List<Collection> crates,
  ) = _SkinModel;

  factory SkinModel.fromJson(Map<String, dynamic> json) =>
      _$SkinModelFromJson(json);
}

@freezed
class Category with _$Category {
  factory Category({
    required String? id,
    required String? name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Rarity with _$Rarity {
  factory Rarity({
    required String color,
    required String name,
  }) = _Rarity;

  factory Rarity.fromJson(Map<String, dynamic> json) => _$RarityFromJson(json);
}

@freezed
class Collection with _$Collection {
  factory Collection({
    required String image,
    required String name,
  }) = _Collection;

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);
}
