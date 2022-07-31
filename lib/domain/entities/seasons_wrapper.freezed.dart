// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seasons_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeasonsWrapper {
  String get translationId => throw _privateConstructorUsedError;
  Map<String, String> get seasons => throw _privateConstructorUsedError;
  Map<String, Map<String, String>> get episodes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeasonsWrapperCopyWith<SeasonsWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeasonsWrapperCopyWith<$Res> {
  factory $SeasonsWrapperCopyWith(
          SeasonsWrapper value, $Res Function(SeasonsWrapper) then) =
      _$SeasonsWrapperCopyWithImpl<$Res>;
  $Res call(
      {String translationId,
      Map<String, String> seasons,
      Map<String, Map<String, String>> episodes});
}

/// @nodoc
class _$SeasonsWrapperCopyWithImpl<$Res>
    implements $SeasonsWrapperCopyWith<$Res> {
  _$SeasonsWrapperCopyWithImpl(this._value, this._then);

  final SeasonsWrapper _value;
  // ignore: unused_field
  final $Res Function(SeasonsWrapper) _then;

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
abstract class _$$_SeasonsWrapperCopyWith<$Res>
    implements $SeasonsWrapperCopyWith<$Res> {
  factory _$$_SeasonsWrapperCopyWith(
          _$_SeasonsWrapper value, $Res Function(_$_SeasonsWrapper) then) =
      __$$_SeasonsWrapperCopyWithImpl<$Res>;
  @override
  $Res call(
      {String translationId,
      Map<String, String> seasons,
      Map<String, Map<String, String>> episodes});
}

/// @nodoc
class __$$_SeasonsWrapperCopyWithImpl<$Res>
    extends _$SeasonsWrapperCopyWithImpl<$Res>
    implements _$$_SeasonsWrapperCopyWith<$Res> {
  __$$_SeasonsWrapperCopyWithImpl(
      _$_SeasonsWrapper _value, $Res Function(_$_SeasonsWrapper) _then)
      : super(_value, (v) => _then(v as _$_SeasonsWrapper));

  @override
  _$_SeasonsWrapper get _value => super._value as _$_SeasonsWrapper;

  @override
  $Res call({
    Object? translationId = freezed,
    Object? seasons = freezed,
    Object? episodes = freezed,
  }) {
    return _then(_$_SeasonsWrapper(
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

class _$_SeasonsWrapper implements _SeasonsWrapper {
  const _$_SeasonsWrapper(
      {required this.translationId,
      required final Map<String, String> seasons,
      required final Map<String, Map<String, String>> episodes})
      : _seasons = seasons,
        _episodes = episodes;

  @override
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
    return 'SeasonsWrapper(translationId: $translationId, seasons: $seasons, episodes: $episodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeasonsWrapper &&
            const DeepCollectionEquality()
                .equals(other.translationId, translationId) &&
            const DeepCollectionEquality().equals(other._seasons, _seasons) &&
            const DeepCollectionEquality().equals(other._episodes, _episodes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(translationId),
      const DeepCollectionEquality().hash(_seasons),
      const DeepCollectionEquality().hash(_episodes));

  @JsonKey(ignore: true)
  @override
  _$$_SeasonsWrapperCopyWith<_$_SeasonsWrapper> get copyWith =>
      __$$_SeasonsWrapperCopyWithImpl<_$_SeasonsWrapper>(this, _$identity);
}

abstract class _SeasonsWrapper implements SeasonsWrapper {
  const factory _SeasonsWrapper(
          {required final String translationId,
          required final Map<String, String> seasons,
          required final Map<String, Map<String, String>> episodes}) =
      _$_SeasonsWrapper;

  @override
  String get translationId;
  @override
  Map<String, String> get seasons;
  @override
  Map<String, Map<String, String>> get episodes;
  @override
  @JsonKey(ignore: true)
  _$$_SeasonsWrapperCopyWith<_$_SeasonsWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
