// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieEvent {
  String get url => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) getTranslations,
    required TResult Function(String url, String translationId) getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? getTranslations,
    TResult Function(String url, String translationId)? getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? getTranslations,
    TResult Function(String url, String translationId)? getVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieTranslationsEvent value) getTranslations,
    required TResult Function(GetMovieVideosEvent value) getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieTranslationsEvent value)? getTranslations,
    TResult Function(GetMovieVideosEvent value)? getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieTranslationsEvent value)? getTranslations,
    TResult Function(GetMovieVideosEvent value)? getVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieEventCopyWith<MovieEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieEventCopyWith<$Res> {
  factory $MovieEventCopyWith(
          MovieEvent value, $Res Function(MovieEvent) then) =
      _$MovieEventCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$MovieEventCopyWithImpl<$Res> implements $MovieEventCopyWith<$Res> {
  _$MovieEventCopyWithImpl(this._value, this._then);

  final MovieEvent _value;
  // ignore: unused_field
  final $Res Function(MovieEvent) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetMovieTranslationsEventCopyWith<$Res>
    implements $MovieEventCopyWith<$Res> {
  factory _$$GetMovieTranslationsEventCopyWith(
          _$GetMovieTranslationsEvent value,
          $Res Function(_$GetMovieTranslationsEvent) then) =
      __$$GetMovieTranslationsEventCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$$GetMovieTranslationsEventCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements _$$GetMovieTranslationsEventCopyWith<$Res> {
  __$$GetMovieTranslationsEventCopyWithImpl(_$GetMovieTranslationsEvent _value,
      $Res Function(_$GetMovieTranslationsEvent) _then)
      : super(_value, (v) => _then(v as _$GetMovieTranslationsEvent));

  @override
  _$GetMovieTranslationsEvent get _value =>
      super._value as _$GetMovieTranslationsEvent;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$GetMovieTranslationsEvent(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMovieTranslationsEvent implements GetMovieTranslationsEvent {
  const _$GetMovieTranslationsEvent(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'MovieEvent.getTranslations(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieTranslationsEvent &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$GetMovieTranslationsEventCopyWith<_$GetMovieTranslationsEvent>
      get copyWith => __$$GetMovieTranslationsEventCopyWithImpl<
          _$GetMovieTranslationsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) getTranslations,
    required TResult Function(String url, String translationId) getVideos,
  }) {
    return getTranslations(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? getTranslations,
    TResult Function(String url, String translationId)? getVideos,
  }) {
    return getTranslations?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? getTranslations,
    TResult Function(String url, String translationId)? getVideos,
    required TResult orElse(),
  }) {
    if (getTranslations != null) {
      return getTranslations(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieTranslationsEvent value) getTranslations,
    required TResult Function(GetMovieVideosEvent value) getVideos,
  }) {
    return getTranslations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieTranslationsEvent value)? getTranslations,
    TResult Function(GetMovieVideosEvent value)? getVideos,
  }) {
    return getTranslations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieTranslationsEvent value)? getTranslations,
    TResult Function(GetMovieVideosEvent value)? getVideos,
    required TResult orElse(),
  }) {
    if (getTranslations != null) {
      return getTranslations(this);
    }
    return orElse();
  }
}

abstract class GetMovieTranslationsEvent implements MovieEvent {
  const factory GetMovieTranslationsEvent(final String url) =
      _$GetMovieTranslationsEvent;

  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$GetMovieTranslationsEventCopyWith<_$GetMovieTranslationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMovieVideosEventCopyWith<$Res>
    implements $MovieEventCopyWith<$Res> {
  factory _$$GetMovieVideosEventCopyWith(_$GetMovieVideosEvent value,
          $Res Function(_$GetMovieVideosEvent) then) =
      __$$GetMovieVideosEventCopyWithImpl<$Res>;
  @override
  $Res call({String url, String translationId});
}

/// @nodoc
class __$$GetMovieVideosEventCopyWithImpl<$Res>
    extends _$MovieEventCopyWithImpl<$Res>
    implements _$$GetMovieVideosEventCopyWith<$Res> {
  __$$GetMovieVideosEventCopyWithImpl(
      _$GetMovieVideosEvent _value, $Res Function(_$GetMovieVideosEvent) _then)
      : super(_value, (v) => _then(v as _$GetMovieVideosEvent));

  @override
  _$GetMovieVideosEvent get _value => super._value as _$GetMovieVideosEvent;

  @override
  $Res call({
    Object? url = freezed,
    Object? translationId = freezed,
  }) {
    return _then(_$GetMovieVideosEvent(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      translationId == freezed
          ? _value.translationId
          : translationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMovieVideosEvent implements GetMovieVideosEvent {
  const _$GetMovieVideosEvent(this.url, this.translationId);

  @override
  final String url;
  @override
  final String translationId;

  @override
  String toString() {
    return 'MovieEvent.getVideos(url: $url, translationId: $translationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMovieVideosEvent &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.translationId, translationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(translationId));

  @JsonKey(ignore: true)
  @override
  _$$GetMovieVideosEventCopyWith<_$GetMovieVideosEvent> get copyWith =>
      __$$GetMovieVideosEventCopyWithImpl<_$GetMovieVideosEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) getTranslations,
    required TResult Function(String url, String translationId) getVideos,
  }) {
    return getVideos(url, translationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? getTranslations,
    TResult Function(String url, String translationId)? getVideos,
  }) {
    return getVideos?.call(url, translationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? getTranslations,
    TResult Function(String url, String translationId)? getVideos,
    required TResult orElse(),
  }) {
    if (getVideos != null) {
      return getVideos(url, translationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMovieTranslationsEvent value) getTranslations,
    required TResult Function(GetMovieVideosEvent value) getVideos,
  }) {
    return getVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetMovieTranslationsEvent value)? getTranslations,
    TResult Function(GetMovieVideosEvent value)? getVideos,
  }) {
    return getVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMovieTranslationsEvent value)? getTranslations,
    TResult Function(GetMovieVideosEvent value)? getVideos,
    required TResult orElse(),
  }) {
    if (getVideos != null) {
      return getVideos(this);
    }
    return orElse();
  }
}

abstract class GetMovieVideosEvent implements MovieEvent {
  const factory GetMovieVideosEvent(
      final String url, final String translationId) = _$GetMovieVideosEvent;

  @override
  String get url;
  String get translationId;
  @override
  @JsonKey(ignore: true)
  _$$GetMovieVideosEventCopyWith<_$GetMovieVideosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations)
        successTranslations,
    required TResult Function(Map<String, String> videos) successVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessTranslationsState value)
        successTranslations,
    required TResult Function(_MovieSuccessVideosState value) successVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
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
    required TResult Function(Map<String, String> translations)
        successTranslations,
    required TResult Function(Map<String, String> videos) successVideos,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
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
    required TResult Function(_MovieSuccessTranslationsState value)
        successTranslations,
    required TResult Function(_MovieSuccessVideosState value) successVideos,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
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
    required TResult Function(Map<String, String> translations)
        successTranslations,
    required TResult Function(Map<String, String> videos) successVideos,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
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
    required TResult Function(_MovieSuccessTranslationsState value)
        successTranslations,
    required TResult Function(_MovieSuccessVideosState value) successVideos,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
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
    required TResult Function(Map<String, String> translations)
        successTranslations,
    required TResult Function(Map<String, String> videos) successVideos,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
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
    required TResult Function(_MovieSuccessTranslationsState value)
        successTranslations,
    required TResult Function(_MovieSuccessVideosState value) successVideos,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
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
abstract class _$$_MovieSuccessTranslationsStateCopyWith<$Res> {
  factory _$$_MovieSuccessTranslationsStateCopyWith(
          _$_MovieSuccessTranslationsState value,
          $Res Function(_$_MovieSuccessTranslationsState) then) =
      __$$_MovieSuccessTranslationsStateCopyWithImpl<$Res>;
  $Res call({Map<String, String> translations});
}

/// @nodoc
class __$$_MovieSuccessTranslationsStateCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements _$$_MovieSuccessTranslationsStateCopyWith<$Res> {
  __$$_MovieSuccessTranslationsStateCopyWithImpl(
      _$_MovieSuccessTranslationsState _value,
      $Res Function(_$_MovieSuccessTranslationsState) _then)
      : super(_value, (v) => _then(v as _$_MovieSuccessTranslationsState));

  @override
  _$_MovieSuccessTranslationsState get _value =>
      super._value as _$_MovieSuccessTranslationsState;

  @override
  $Res call({
    Object? translations = freezed,
  }) {
    return _then(_$_MovieSuccessTranslationsState(
      translations == freezed
          ? _value._translations
          : translations // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_MovieSuccessTranslationsState
    implements _MovieSuccessTranslationsState {
  const _$_MovieSuccessTranslationsState(final Map<String, String> translations)
      : _translations = translations;

  final Map<String, String> _translations;
  @override
  Map<String, String> get translations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translations);
  }

  @override
  String toString() {
    return 'MovieState.successTranslations(translations: $translations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieSuccessTranslationsState &&
            const DeepCollectionEquality()
                .equals(other._translations, _translations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_translations));

  @JsonKey(ignore: true)
  @override
  _$$_MovieSuccessTranslationsStateCopyWith<_$_MovieSuccessTranslationsState>
      get copyWith => __$$_MovieSuccessTranslationsStateCopyWithImpl<
          _$_MovieSuccessTranslationsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations)
        successTranslations,
    required TResult Function(Map<String, String> videos) successVideos,
  }) {
    return successTranslations(translations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
  }) {
    return successTranslations?.call(translations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
    required TResult orElse(),
  }) {
    if (successTranslations != null) {
      return successTranslations(translations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessTranslationsState value)
        successTranslations,
    required TResult Function(_MovieSuccessVideosState value) successVideos,
  }) {
    return successTranslations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
  }) {
    return successTranslations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
    required TResult orElse(),
  }) {
    if (successTranslations != null) {
      return successTranslations(this);
    }
    return orElse();
  }
}

abstract class _MovieSuccessTranslationsState implements MovieState {
  const factory _MovieSuccessTranslationsState(
          final Map<String, String> translations) =
      _$_MovieSuccessTranslationsState;

  Map<String, String> get translations;
  @JsonKey(ignore: true)
  _$$_MovieSuccessTranslationsStateCopyWith<_$_MovieSuccessTranslationsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MovieSuccessVideosStateCopyWith<$Res> {
  factory _$$_MovieSuccessVideosStateCopyWith(_$_MovieSuccessVideosState value,
          $Res Function(_$_MovieSuccessVideosState) then) =
      __$$_MovieSuccessVideosStateCopyWithImpl<$Res>;
  $Res call({Map<String, String> videos});
}

/// @nodoc
class __$$_MovieSuccessVideosStateCopyWithImpl<$Res>
    extends _$MovieStateCopyWithImpl<$Res>
    implements _$$_MovieSuccessVideosStateCopyWith<$Res> {
  __$$_MovieSuccessVideosStateCopyWithImpl(_$_MovieSuccessVideosState _value,
      $Res Function(_$_MovieSuccessVideosState) _then)
      : super(_value, (v) => _then(v as _$_MovieSuccessVideosState));

  @override
  _$_MovieSuccessVideosState get _value =>
      super._value as _$_MovieSuccessVideosState;

  @override
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_$_MovieSuccessVideosState(
      videos == freezed
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_MovieSuccessVideosState implements _MovieSuccessVideosState {
  const _$_MovieSuccessVideosState(final Map<String, String> videos)
      : _videos = videos;

  final Map<String, String> _videos;
  @override
  Map<String, String> get videos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_videos);
  }

  @override
  String toString() {
    return 'MovieState.successVideos(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieSuccessVideosState &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  _$$_MovieSuccessVideosStateCopyWith<_$_MovieSuccessVideosState>
      get copyWith =>
          __$$_MovieSuccessVideosStateCopyWithImpl<_$_MovieSuccessVideosState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> translations)
        successTranslations,
    required TResult Function(Map<String, String> videos) successVideos,
  }) {
    return successVideos(videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
  }) {
    return successVideos?.call(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> translations)? successTranslations,
    TResult Function(Map<String, String> videos)? successVideos,
    required TResult orElse(),
  }) {
    if (successVideos != null) {
      return successVideos(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MovieInitialState value) initial,
    required TResult Function(_MovieLoadingState value) loading,
    required TResult Function(_MovieErrorState value) error,
    required TResult Function(_MovieSuccessTranslationsState value)
        successTranslations,
    required TResult Function(_MovieSuccessVideosState value) successVideos,
  }) {
    return successVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
  }) {
    return successVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MovieInitialState value)? initial,
    TResult Function(_MovieLoadingState value)? loading,
    TResult Function(_MovieErrorState value)? error,
    TResult Function(_MovieSuccessTranslationsState value)? successTranslations,
    TResult Function(_MovieSuccessVideosState value)? successVideos,
    required TResult orElse(),
  }) {
    if (successVideos != null) {
      return successVideos(this);
    }
    return orElse();
  }
}

abstract class _MovieSuccessVideosState implements MovieState {
  const factory _MovieSuccessVideosState(final Map<String, String> videos) =
      _$_MovieSuccessVideosState;

  Map<String, String> get videos;
  @JsonKey(ignore: true)
  _$$_MovieSuccessVideosStateCopyWith<_$_MovieSuccessVideosState>
      get copyWith => throw _privateConstructorUsedError;
}
