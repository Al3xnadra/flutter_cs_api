// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SkinModelImpl _$$SkinModelImplFromJson(Map<String, dynamic> json) =>
    _$SkinModelImpl(
      json['id'] as String,
      json['name'] as String,
      json['description'] as String,
      (json['min_float'] as num?)?.toDouble(),
      (json['max_float'] as num?)?.toDouble(),
      json['image'] as String,
      json['souvenir'] as bool?,
      json['stattrak'] as bool,
      Category.fromJson(json['weapon'] as Map<String, dynamic>),
      Category.fromJson(json['category'] as Map<String, dynamic>),
      Rarity.fromJson(json['rarity'] as Map<String, dynamic>),
      (json['collections'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['crates'] as List<dynamic>)
          .map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SkinModelImplToJson(_$SkinModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'min_float': instance.minFloat,
      'max_float': instance.maxFloat,
      'image': instance.image,
      'souvenir': instance.souvenir,
      'stattrak': instance.stattrak,
      'weapon': instance.weapon,
      'category': instance.category,
      'rarity': instance.rarity,
      'collections': instance.collections,
      'crates': instance.crates,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$RarityImpl _$$RarityImplFromJson(Map<String, dynamic> json) => _$RarityImpl(
      color: json['color'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$RarityImplToJson(_$RarityImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'name': instance.name,
    };

_$CollectionImpl _$$CollectionImplFromJson(Map<String, dynamic> json) =>
    _$CollectionImpl(
      image: json['image'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CollectionImplToJson(_$CollectionImpl instance) =>
    <String, dynamic>{
      'image': instance.image,
      'name': instance.name,
    };
