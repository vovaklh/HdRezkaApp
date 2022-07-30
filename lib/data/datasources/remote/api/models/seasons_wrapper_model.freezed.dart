// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seasons_wrapper_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeasonsWrapperModel _$SeasonsWrapperModelFromJson(Map<String, dynamic> json) {
  return _SeasonsWrapperModel.fromJson(json);
}

/// @nodoc
mixin _$SeasonsWrapperModel {
  @JsonKey(name: 'translator_id')
  String get translationId => throw _privateConstructorUsedError;
  Map<String, String> get seasons => throw _privateConstructorUsedError;
  Map<String, Map<String, String>> get episodes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeasonsWrapperModelCopyWith<SeasonsWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonsWrapperModelCopyWith<$Res> {
  factory $SeasonsWrapperModelCopyWith(
          SeasonsWrapperModel value, $Res Function(SeasonsWrapperModel) then) =
      _$SeasonsWrapperModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'translator_id') String translationId,
      Map<String, String> seasons,
      Map<String, Map<String, String>> episodes});
}

/// @nodoc
class _$SeasonsWrapperModelCopyWithImpl<$Res>
    implements $SeasonsWrapperModelCopyWith<$Res> {
  _$SeasonsWrapperModelCopyWithImpl(this._value, this._then);

  final SeasonsWrapperModel _value;
  // ignore: unused_field
  final $Res Function(SeasonsWrapperModel) _then;

  @override
  $Res call({
    Object? translationId = freezed,
    Object? seasons = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_value.copyWith(
      translationId: translationId == freezed
          ? _value.translationId
          : translationId // ignore: cast_nullable_to_non_nullable
              as String,
      seasons: seasons == freezed
          ? _value.seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      episodes: episodes == freezed
          ? _value.episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
    ));
  }
}

/// @nodoc
abstract class _$$_SeasonsWrapperModelCopyWith<$Res>
    implements $SeasonsWrapperModelCopyWith<$Res> {
  factory _$$_SeasonsWrapperModelCopyWith(_$_SeasonsWrapperModel value,
          $Res Function(_$_SeasonsWrapperModel) then) =
      __$$_SeasonsWrapperModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'translator_id') String translationId,
      Map<String, String> seasons,
      Map<String, Map<String, String>> episodes});
}

/// @nodoc
class __$$_SeasonsWrapperModelCopyWithImpl<$Res>
    extends _$SeasonsWrapperModelCopyWithImpl<$Res>
    implements _$$_SeasonsWrapperModelCopyWith<$Res> {
  __$$_SeasonsWrapperModelCopyWithImpl(_$_SeasonsWrapperModel _value,
      $Res Function(_$_SeasonsWrapperModel) _then)
      : super(_value, (v) => _then(v as _$_SeasonsWrapperModel));

  @override
  _$_SeasonsWrapperModel get _value => super._value as _$_SeasonsWrapperModel;

  @override
  $Res call({
    Object? translationId = freezed,
    Object? seasons = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_$_SeasonsWrapperModel(
      translationId: translationId == freezed
          ? _value.translationId
          : translationId // ignore: cast_nullable_to_non_nullable
              as String,
      seasons: seasons == freezed
          ? _value._seasons
          : seasons // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      episodes: episodes == freezed
          ? _value._episodes
          : episodes // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeasonsWrapperModel implements _SeasonsWrapperModel {
  const _$_SeasonsWrapperModel(
      {@JsonKey(name: 'translator_id') required this.translationId,
      required final Map<String, String> seasons,
      required final Map<String, Map<String, String>> episodes})
      : _seasons = seasons,
        _episodes = episodes;

  factory _$_SeasonsWrapperModel.fromJson(Map<String, dynamic> json) =>
      _$$_SeasonsWrapperModelFromJson(json);

  @override
  @JsonKey(name: 'translator_id')
  final String translationId;
  final Map<String, String> _seasons;
  @override
  Map<String, String> get seasons {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_seasons);
  }

  final Map<String, Map<String, String>> _episodes;
  @override
  Map<String, Map<String, String>> get episodes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_episodes);
  }

  @override
  String toString() {
    return 'SeasonsWrapperModel(translationId: $translationId, seasons: $seasons, episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeasonsWrapperModel &&
            const DeepCollectionEquality()
                .equals(other.translationId, translationId) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(translationId),
      const DeepCollectionEquality().hash(_seasons),
      const DeepCollectionEquality().hash(_episodes));

  @JsonKey(ignore: true)
  @override
  _$$_SeasonsWrapperModelCopyWith<_$_SeasonsWrapperModel> get copyWith =>
      __$$_SeasonsWrapperModelCopyWithImpl<_$_SeasonsWrapperModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeasonsWrapperModelToJson(
      this,
    );
  }
}

abstract class _SeasonsWrapperModel implements SeasonsWrapperModel {
  const factory _SeasonsWrapperModel(
          {@JsonKey(name: 'translator_id') required final String translationId,
          required final Map<String, String> seasons,
          required final Map<String, Map<String, String>> episodes}) =
      _$_SeasonsWrapperModel;

  factory _SeasonsWrapperModel.fromJson(Map<String, dynamic> json) =
      _$_SeasonsWrapperModel.fromJson;

  @override
  @JsonKey(name: 'translator_id')
  String get translationId;
  @override
  Map<String, String> get seasons;
  @override
  Map<String, Map<String, String>> get episodes;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonsWrapperModelCopyWith<_$_SeasonsWrapperModel> get copyWith =>
      throw _privateConstructorUsedError;
}
