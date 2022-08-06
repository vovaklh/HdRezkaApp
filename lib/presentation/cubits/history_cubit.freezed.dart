// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryInitialState value) initial,
    required TResult Function(_HistoryLoadingState value) loading,
    required TResult Function(_HistoryErrorState value) error,
    required TResult Function(_HistorySuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res> implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  final HistoryState _value;
  // ignore: unused_field
  final $Res Function(HistoryState) _then;
}

/// @nodoc
abstract class _$$_HistoryInitialStateCopyWith<$Res> {
  factory _$$_HistoryInitialStateCopyWith(_$_HistoryInitialState value,
          $Res Function(_$_HistoryInitialState) then) =
      __$$_HistoryInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryInitialStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$$_HistoryInitialStateCopyWith<$Res> {
  __$$_HistoryInitialStateCopyWithImpl(_$_HistoryInitialState _value,
      $Res Function(_$_HistoryInitialState) _then)
      : super(_value, (v) => _then(v as _$_HistoryInitialState));

  @override
  _$_HistoryInitialState get _value => super._value as _$_HistoryInitialState;
}

/// @nodoc

class _$_HistoryInitialState implements _HistoryInitialState {
  const _$_HistoryInitialState();

  @override
  String toString() {
    return 'HistoryState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HistoryInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
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
    required TResult Function(_HistoryInitialState value) initial,
    required TResult Function(_HistoryLoadingState value) loading,
    required TResult Function(_HistoryErrorState value) error,
    required TResult Function(_HistorySuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HistoryInitialState implements HistoryState {
  const factory _HistoryInitialState() = _$_HistoryInitialState;
}

/// @nodoc
abstract class _$$_HistoryLoadingStateCopyWith<$Res> {
  factory _$$_HistoryLoadingStateCopyWith(_$_HistoryLoadingState value,
          $Res Function(_$_HistoryLoadingState) then) =
      __$$_HistoryLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HistoryLoadingStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$$_HistoryLoadingStateCopyWith<$Res> {
  __$$_HistoryLoadingStateCopyWithImpl(_$_HistoryLoadingState _value,
      $Res Function(_$_HistoryLoadingState) _then)
      : super(_value, (v) => _then(v as _$_HistoryLoadingState));

  @override
  _$_HistoryLoadingState get _value => super._value as _$_HistoryLoadingState;
}

/// @nodoc

class _$_HistoryLoadingState implements _HistoryLoadingState {
  const _$_HistoryLoadingState();

  @override
  String toString() {
    return 'HistoryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HistoryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
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
    required TResult Function(_HistoryInitialState value) initial,
    required TResult Function(_HistoryLoadingState value) loading,
    required TResult Function(_HistoryErrorState value) error,
    required TResult Function(_HistorySuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HistoryLoadingState implements HistoryState {
  const factory _HistoryLoadingState() = _$_HistoryLoadingState;
}

/// @nodoc
abstract class _$$_HistoryErrorStateCopyWith<$Res> {
  factory _$$_HistoryErrorStateCopyWith(_$_HistoryErrorState value,
          $Res Function(_$_HistoryErrorState) then) =
      __$$_HistoryErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$$_HistoryErrorStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$$_HistoryErrorStateCopyWith<$Res> {
  __$$_HistoryErrorStateCopyWithImpl(
      _$_HistoryErrorState _value, $Res Function(_$_HistoryErrorState) _then)
      : super(_value, (v) => _then(v as _$_HistoryErrorState));

  @override
  _$_HistoryErrorState get _value => super._value as _$_HistoryErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_HistoryErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_HistoryErrorState implements _HistoryErrorState {
  const _$_HistoryErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'HistoryState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistoryErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_HistoryErrorStateCopyWith<_$_HistoryErrorState> get copyWith =>
      __$$_HistoryErrorStateCopyWithImpl<_$_HistoryErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content) success,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
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
    required TResult Function(_HistoryInitialState value) initial,
    required TResult Function(_HistoryLoadingState value) loading,
    required TResult Function(_HistoryErrorState value) error,
    required TResult Function(_HistorySuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HistoryErrorState implements HistoryState {
  const factory _HistoryErrorState(final Object exception) =
      _$_HistoryErrorState;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_HistoryErrorStateCopyWith<_$_HistoryErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_HistorySuccessStateCopyWith<$Res> {
  factory _$$_HistorySuccessStateCopyWith(_$_HistorySuccessState value,
          $Res Function(_$_HistorySuccessState) then) =
      __$$_HistorySuccessStateCopyWithImpl<$Res>;
  $Res call({List<Content> content});
}

/// @nodoc
class __$$_HistorySuccessStateCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res>
    implements _$$_HistorySuccessStateCopyWith<$Res> {
  __$$_HistorySuccessStateCopyWithImpl(_$_HistorySuccessState _value,
      $Res Function(_$_HistorySuccessState) _then)
      : super(_value, (v) => _then(v as _$_HistorySuccessState));

  @override
  _$_HistorySuccessState get _value => super._value as _$_HistorySuccessState;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$_HistorySuccessState(
      content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Content>,
    ));
  }
}

/// @nodoc

class _$_HistorySuccessState implements _HistorySuccessState {
  const _$_HistorySuccessState(final List<Content> content)
      : _content = content;

  final List<Content> _content;
  @override
  List<Content> get content {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString() {
    return 'HistoryState.success(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HistorySuccessState &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  _$$_HistorySuccessStateCopyWith<_$_HistorySuccessState> get copyWith =>
      __$$_HistorySuccessStateCopyWithImpl<_$_HistorySuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content) success,
  }) {
    return success(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
  }) {
    return success?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HistoryInitialState value) initial,
    required TResult Function(_HistoryLoadingState value) loading,
    required TResult Function(_HistoryErrorState value) error,
    required TResult Function(_HistorySuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HistoryInitialState value)? initial,
    TResult Function(_HistoryLoadingState value)? loading,
    TResult Function(_HistoryErrorState value)? error,
    TResult Function(_HistorySuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _HistorySuccessState implements HistoryState {
  const factory _HistorySuccessState(final List<Content> content) =
      _$_HistorySuccessState;

  List<Content> get content;
  @JsonKey(ignore: true)
  _$$_HistorySuccessStateCopyWith<_$_HistorySuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
