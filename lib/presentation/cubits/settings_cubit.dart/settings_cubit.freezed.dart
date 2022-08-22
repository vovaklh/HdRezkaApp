// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(SettingsDto settingsDto) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsInitialState value) initial,
    required TResult Function(_SettingsLoadingState value) loading,
    required TResult Function(_SettingsErrorState value) error,
    required TResult Function(_SettingsSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;
}

/// @nodoc
abstract class _$$_SettingsInitialStateCopyWith<$Res> {
  factory _$$_SettingsInitialStateCopyWith(_$_SettingsInitialState value,
          $Res Function(_$_SettingsInitialState) then) =
      __$$_SettingsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SettingsInitialStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsInitialStateCopyWith<$Res> {
  __$$_SettingsInitialStateCopyWithImpl(_$_SettingsInitialState _value,
      $Res Function(_$_SettingsInitialState) _then)
      : super(_value, (v) => _then(v as _$_SettingsInitialState));

  @override
  _$_SettingsInitialState get _value => super._value as _$_SettingsInitialState;
}

/// @nodoc

class _$_SettingsInitialState implements _SettingsInitialState {
  const _$_SettingsInitialState();

  @override
  String toString() {
    return 'SettingsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SettingsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(SettingsDto settingsDto) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsInitialState value) initial,
    required TResult Function(_SettingsLoadingState value) loading,
    required TResult Function(_SettingsErrorState value) error,
    required TResult Function(_SettingsSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SettingsInitialState implements SettingsState {
  const factory _SettingsInitialState() = _$_SettingsInitialState;
}

/// @nodoc
abstract class _$$_SettingsLoadingStateCopyWith<$Res> {
  factory _$$_SettingsLoadingStateCopyWith(_$_SettingsLoadingState value,
          $Res Function(_$_SettingsLoadingState) then) =
      __$$_SettingsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SettingsLoadingStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsLoadingStateCopyWith<$Res> {
  __$$_SettingsLoadingStateCopyWithImpl(_$_SettingsLoadingState _value,
      $Res Function(_$_SettingsLoadingState) _then)
      : super(_value, (v) => _then(v as _$_SettingsLoadingState));

  @override
  _$_SettingsLoadingState get _value => super._value as _$_SettingsLoadingState;
}

/// @nodoc

class _$_SettingsLoadingState implements _SettingsLoadingState {
  const _$_SettingsLoadingState();

  @override
  String toString() {
    return 'SettingsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SettingsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(SettingsDto settingsDto) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsInitialState value) initial,
    required TResult Function(_SettingsLoadingState value) loading,
    required TResult Function(_SettingsErrorState value) error,
    required TResult Function(_SettingsSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SettingsLoadingState implements SettingsState {
  const factory _SettingsLoadingState() = _$_SettingsLoadingState;
}

/// @nodoc
abstract class _$$_SettingsErrorStateCopyWith<$Res> {
  factory _$$_SettingsErrorStateCopyWith(_$_SettingsErrorState value,
          $Res Function(_$_SettingsErrorState) then) =
      __$$_SettingsErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$$_SettingsErrorStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsErrorStateCopyWith<$Res> {
  __$$_SettingsErrorStateCopyWithImpl(
      _$_SettingsErrorState _value, $Res Function(_$_SettingsErrorState) _then)
      : super(_value, (v) => _then(v as _$_SettingsErrorState));

  @override
  _$_SettingsErrorState get _value => super._value as _$_SettingsErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_SettingsErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_SettingsErrorState implements _SettingsErrorState {
  const _$_SettingsErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'SettingsState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsErrorStateCopyWith<_$_SettingsErrorState> get copyWith =>
      __$$_SettingsErrorStateCopyWithImpl<_$_SettingsErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(SettingsDto settingsDto) success,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsInitialState value) initial,
    required TResult Function(_SettingsLoadingState value) loading,
    required TResult Function(_SettingsErrorState value) error,
    required TResult Function(_SettingsSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SettingsErrorState implements SettingsState {
  const factory _SettingsErrorState(final Object exception) =
      _$_SettingsErrorState;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_SettingsErrorStateCopyWith<_$_SettingsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SettingsSuccessStateCopyWith<$Res> {
  factory _$$_SettingsSuccessStateCopyWith(_$_SettingsSuccessState value,
          $Res Function(_$_SettingsSuccessState) then) =
      __$$_SettingsSuccessStateCopyWithImpl<$Res>;
  $Res call({SettingsDto settingsDto});

  $SettingsDtoCopyWith<$Res> get settingsDto;
}

/// @nodoc
class __$$_SettingsSuccessStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsSuccessStateCopyWith<$Res> {
  __$$_SettingsSuccessStateCopyWithImpl(_$_SettingsSuccessState _value,
      $Res Function(_$_SettingsSuccessState) _then)
      : super(_value, (v) => _then(v as _$_SettingsSuccessState));

  @override
  _$_SettingsSuccessState get _value => super._value as _$_SettingsSuccessState;

  @override
  $Res call({
    Object? settingsDto = freezed,
  }) {
    return _then(_$_SettingsSuccessState(
      settingsDto == freezed
          ? _value.settingsDto
          : settingsDto // ignore: cast_nullable_to_non_nullable
              as SettingsDto,
    ));
  }

  @override
  $SettingsDtoCopyWith<$Res> get settingsDto {
    return $SettingsDtoCopyWith<$Res>(_value.settingsDto, (value) {
      return _then(_value.copyWith(settingsDto: value));
    });
  }
}

/// @nodoc

class _$_SettingsSuccessState implements _SettingsSuccessState {
  const _$_SettingsSuccessState(this.settingsDto);

  @override
  final SettingsDto settingsDto;

  @override
  String toString() {
    return 'SettingsState.success(settingsDto: $settingsDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsSuccessState &&
            const DeepCollectionEquality()
                .equals(other.settingsDto, settingsDto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(settingsDto));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsSuccessStateCopyWith<_$_SettingsSuccessState> get copyWith =>
      __$$_SettingsSuccessStateCopyWithImpl<_$_SettingsSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(SettingsDto settingsDto) success,
  }) {
    return success(settingsDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
  }) {
    return success?.call(settingsDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(SettingsDto settingsDto)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(settingsDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SettingsInitialState value) initial,
    required TResult Function(_SettingsLoadingState value) loading,
    required TResult Function(_SettingsErrorState value) error,
    required TResult Function(_SettingsSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SettingsInitialState value)? initial,
    TResult Function(_SettingsLoadingState value)? loading,
    TResult Function(_SettingsErrorState value)? error,
    TResult Function(_SettingsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SettingsSuccessState implements SettingsState {
  const factory _SettingsSuccessState(final SettingsDto settingsDto) =
      _$_SettingsSuccessState;

  SettingsDto get settingsDto;
  @JsonKey(ignore: true)
  _$$_SettingsSuccessStateCopyWith<_$_SettingsSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
