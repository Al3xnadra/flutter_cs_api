// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'searchbar_skin_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchbarSkinState {
  List<SkinModel> get skinModel => throw _privateConstructorUsedError;

  /// Create a copy of SearchbarSkinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchbarSkinStateCopyWith<SearchbarSkinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchbarSkinStateCopyWith<$Res> {
  factory $SearchbarSkinStateCopyWith(
          SearchbarSkinState value, $Res Function(SearchbarSkinState) then) =
      _$SearchbarSkinStateCopyWithImpl<$Res, SearchbarSkinState>;
  @useResult
  $Res call({List<SkinModel> skinModel});
}

/// @nodoc
class _$SearchbarSkinStateCopyWithImpl<$Res, $Val extends SearchbarSkinState>
    implements $SearchbarSkinStateCopyWith<$Res> {
  _$SearchbarSkinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchbarSkinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skinModel = null,
  }) {
    return _then(_value.copyWith(
      skinModel: null == skinModel
          ? _value.skinModel
          : skinModel // ignore: cast_nullable_to_non_nullable
              as List<SkinModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchbarSkinStateImplCopyWith<$Res>
    implements $SearchbarSkinStateCopyWith<$Res> {
  factory _$$SearchbarSkinStateImplCopyWith(_$SearchbarSkinStateImpl value,
          $Res Function(_$SearchbarSkinStateImpl) then) =
      __$$SearchbarSkinStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SkinModel> skinModel});
}

/// @nodoc
class __$$SearchbarSkinStateImplCopyWithImpl<$Res>
    extends _$SearchbarSkinStateCopyWithImpl<$Res, _$SearchbarSkinStateImpl>
    implements _$$SearchbarSkinStateImplCopyWith<$Res> {
  __$$SearchbarSkinStateImplCopyWithImpl(_$SearchbarSkinStateImpl _value,
      $Res Function(_$SearchbarSkinStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchbarSkinState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? skinModel = null,
  }) {
    return _then(_$SearchbarSkinStateImpl(
      skinModel: null == skinModel
          ? _value._skinModel
          : skinModel // ignore: cast_nullable_to_non_nullable
              as List<SkinModel>,
    ));
  }
}

/// @nodoc

class _$SearchbarSkinStateImpl implements _SearchbarSkinState {
  const _$SearchbarSkinStateImpl({final List<SkinModel> skinModel = const []})
      : _skinModel = skinModel;

  final List<SkinModel> _skinModel;
  @override
  @JsonKey()
  List<SkinModel> get skinModel {
    if (_skinModel is EqualUnmodifiableListView) return _skinModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skinModel);
  }

  @override
  String toString() {
    return 'SearchbarSkinState(skinModel: $skinModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchbarSkinStateImpl &&
            const DeepCollectionEquality()
                .equals(other._skinModel, _skinModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_skinModel));

  /// Create a copy of SearchbarSkinState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchbarSkinStateImplCopyWith<_$SearchbarSkinStateImpl> get copyWith =>
      __$$SearchbarSkinStateImplCopyWithImpl<_$SearchbarSkinStateImpl>(
          this, _$identity);
}

abstract class _SearchbarSkinState implements SearchbarSkinState {
  const factory _SearchbarSkinState({final List<SkinModel> skinModel}) =
      _$SearchbarSkinStateImpl;

  @override
  List<SkinModel> get skinModel;

  /// Create a copy of SearchbarSkinState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchbarSkinStateImplCopyWith<_$SearchbarSkinStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
