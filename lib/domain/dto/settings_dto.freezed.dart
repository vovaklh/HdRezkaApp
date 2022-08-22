// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsDto {
  bool get isLoggedIn => throw _privateConstructorUsedError;
  bool get isDarkMode => throw _privateConstructorUsedError;
  String get mirrorUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsDtoCopyWith<SettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsDtoCopyWith<$Res> {
  factory $SettingsDtoCopyWith(
          SettingsDto value, $Res Function(SettingsDto) then) =
      _$SettingsDtoCopyWithImpl<$Res>;
  $Res call({bool isLoggedIn, bool isDarkMode, String mirrorUrl});
}

/// @nodoc
class _$SettingsDtoCopyWithImpl<$Res> implements $SettingsDtoCopyWith<$Res> {
  _$SettingsDtoCopyWithImpl(this._value, this._then);

  final SettingsDto _value;
  // ignore: unused_field
  final $Res Function(SettingsDto) _then;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
    Object? isDarkMode = freezed,
    Object? mirrorUrl = freezed,
  }) {
    return _then(_value.copyWith(
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      mirrorUrl: mirrorUrl == freezed
          ? _value.mirrorUrl
          : mirrorUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsDtoCopyWith<$Res>
    implements $SettingsDtoCopyWith<$Res> {
  factory _$$_SettingsDtoCopyWith(
          _$_SettingsDto value, $Res Function(_$_SettingsDto) then) =
      __$$_SettingsDtoCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoggedIn, bool isDarkMode, String mirrorUrl});
}

/// @nodoc
class __$$_SettingsDtoCopyWithImpl<$Res> extends _$SettingsDtoCopyWithImpl<$Res>
    implements _$$_SettingsDtoCopyWith<$Res> {
  __$$_SettingsDtoCopyWithImpl(
      _$_SettingsDto _value, $Res Function(_$_SettingsDto) _then)
      : super(_value, (v) => _then(v as _$_SettingsDto));

  @override
  _$_SettingsDto get _value => super._value as _$_SettingsDto;

  @override
  $Res call({
    Object? isLoggedIn = freezed,
    Object? isDarkMode = freezed,
    Object? mirrorUrl = freezed,
  }) {
    return _then(_$_SettingsDto(
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      mirrorUrl: mirrorUrl == freezed
          ? _value.mirrorUrl
          : mirrorUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SettingsDto implements _SettingsDto {
  const _$_SettingsDto(
      {required this.isLoggedIn,
      required this.isDarkMode,
      required this.mirrorUrl});

  @override
  final bool isLoggedIn;
  @override
  final bool isDarkMode;
  @override
  final String mirrorUrl;

  @override
  String toString() {
    return 'SettingsDto(isLoggedIn: $isLoggedIn, isDarkMode: $isDarkMode, mirrorUrl: $mirrorUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsDto &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn) &&
            const DeepCollectionEquality()
                .equals(other.isDarkMode, isDarkMode) &&
            const DeepCollectionEquality().equals(other.mirrorUrl, mirrorUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoggedIn),
      const DeepCollectionEquality().hash(isDarkMode),
      const DeepCollectionEquality().hash(mirrorUrl));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsDtoCopyWith<_$_SettingsDto> get copyWith =>
      __$$_SettingsDtoCopyWithImpl<_$_SettingsDto>(this, _$identity);
}

abstract class _SettingsDto implements SettingsDto {
  const factory _SettingsDto(
      {required final bool isLoggedIn,
      required final bool isDarkMode,
      required final String mirrorUrl}) = _$_SettingsDto;

  @override
  bool get isLoggedIn;
  @override
  bool get isDarkMode;
  @override
  String get mirrorUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsDtoCopyWith<_$_SettingsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
