// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;
}

/// @nodoc
abstract class _$$_MovieInitialStateCopyWith<$Res> {
  factory _$$_MovieInitialStateCopyWith(_$_MovieInitialState value,
          $Res Function(_$_MovieInitialState) then) =
      __$$_MovieInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieInitialStateCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements _$$_MovieInitialStateCopyWith<$Res> {
  __$$_MovieInitialStateCopyWithImpl(
      _$_MovieInitialState _value, $Res Function(_$_MovieInitialState) _then)
      : super(_value, (v) => _then(v as _$_MovieInitialState));

  @override
  _$_MovieInitialState get _value => super._value as _$_MovieInitialState;
}

/// @nodoc

class _$_MovieInitialState implements _MovieInitialState {
  const _$_MovieInitialState();

  @override
  String toString() {
    return 'MovieState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
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
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MovieInitialState implements MovieState {
  const factory _MovieInitialState() = _$_MovieInitialState;
}

/// @nodoc
abstract class _$$_MovieLoadingStateCopyWith<$Res> {
  factory _$$_MovieLoadingStateCopyWith(_$_MovieLoadingState value,
          $Res Function(_$_MovieLoadingState) then) =
      __$$_MovieLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MovieLoadingStateCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements _$$_MovieLoadingStateCopyWith<$Res> {
  __$$_MovieLoadingStateCopyWithImpl(
      _$_MovieLoadingState _value, $Res Function(_$_MovieLoadingState) _then)
      : super(_value, (v) => _then(v as _$_MovieLoadingState));

  @override
  _$_MovieLoadingState get _value => super._value as _$_MovieLoadingState;
}

/// @nodoc

class _$_MovieLoadingState implements _MovieLoadingState {
  const _$_MovieLoadingState();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MovieLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
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
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MovieLoadingState implements MovieState {
  const factory _MovieLoadingState() = _$_MovieLoadingState;
}

/// @nodoc
abstract class _$$_MovieErrorStateCopyWith<$Res> {
  factory _$$_MovieErrorStateCopyWith(
          _$_MovieErrorState value, $Res Function(_$_MovieErrorState) then) =
      __$$_MovieErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$$_MovieErrorStateCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements _$$_MovieErrorStateCopyWith<$Res> {
  __$$_MovieErrorStateCopyWithImpl(
      _$_MovieErrorState _value, $Res Function(_$_MovieErrorState) _then)
      : super(_value, (v) => _then(v as _$_MovieErrorState));

  @override
  _$_MovieErrorState get _value => super._value as _$_MovieErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_MovieErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_MovieErrorState implements _MovieErrorState {
  const _$_MovieErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'MovieState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_MovieErrorStateCopyWith<_$_MovieErrorState> get copyWith =>
      __$$_MovieErrorStateCopyWithImpl<_$_MovieErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations) success,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
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
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _MovieErrorState implements MovieState {
  const factory _MovieErrorState(final Object exception) = _$_MovieErrorState;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_MovieErrorStateCopyWith<_$_MovieErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MovieSuccessStateCopyWith<$Res> {
  factory _$$_MovieSuccessStateCopyWith(_$_MovieSuccessState value,
          $Res Function(_$_MovieSuccessState) then) =
      __$$_MovieSuccessStateCopyWithImpl<$Res>;
  $Res call({Map<String, String> translations});
}

/// @nodoc
class __$$_MovieSuccessStateCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements _$$_MovieSuccessStateCopyWith<$Res> {
  __$$_MovieSuccessStateCopyWithImpl(
      _$_MovieSuccessState _value, $Res Function(_$_MovieSuccessState) _then)
      : super(_value, (v) => _then(v as _$_MovieSuccessState));

  @override
  _$_MovieSuccessState get _value => super._value as _$_MovieSuccessState;

  @override
  $Res call({
    Object? translations = freezed,
  }) {
    return _then(_$_MovieSuccessState(
      translations == freezed
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_MovieSuccessState implements _MovieSuccessState {
  const _$_MovieSuccessState(final Map<String, String> translations)
      : _translations = translations;

  final Map<String, String> _translations;
  @override
  Map<String, String> get translations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

  @override
  String toString() {
    return 'MovieState.success(translations: $translations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieSuccessState &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  _$$_MovieSuccessStateCopyWith<_$_MovieSuccessState> get copyWith =>
      __$$_MovieSuccessStateCopyWithImpl<_$_MovieSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations) success,
  }) {
    return success(translations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
  }) {
    return success?.call(translations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(translations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _MovieSuccessState implements MovieState {
  const factory _MovieSuccessState(final Map<String, String> translations) =
      _$_MovieSuccessState;

  Map<String, String> get translations;
  @JsonKey(ignore: true)
  _$$_MovieSuccessStateCopyWith<_$_MovieSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
