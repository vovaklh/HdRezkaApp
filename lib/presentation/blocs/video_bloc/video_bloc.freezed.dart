// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoEvent {
  String get url => throw _privateConstructorUsedError;
  String get translationId => throw _privateConstructorUsedError;
  String? get seasonId => throw _privateConstructorUsedError;
  String? get seriesId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String translationId,
            String? seasonId, String? seriesId)
        getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String translationId, String? seasonId,
            String? seriesId)?
        getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String translationId, String? seasonId,
            String? seriesId)?
        getVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVideosEvent value) getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetVideosEvent value)? getVideos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVideosEvent value)? getVideos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoEventCopyWith<VideoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res>;
  $Res call(
      {String url, String translationId, String? seasonId, String? seriesId});
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res> implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  final VideoEvent _value;
  // ignore: unused_field
  final $Res Function(VideoEvent) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? translationId = freezed,
    Object? seasonId = freezed,
    Object? seriesId = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      translationId: translationId == freezed
          ? _value.translationId
          : translationId // ignore: cast_nullable_to_non_nullable
              as String,
      seasonId: seasonId == freezed
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesId: seriesId == freezed
          ? _value.seriesId
          : seriesId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$GetVideosEventCopyWith<$Res>
    implements $VideoEventCopyWith<$Res> {
  factory _$$GetVideosEventCopyWith(
          _$GetVideosEvent value, $Res Function(_$GetVideosEvent) then) =
      __$$GetVideosEventCopyWithImpl<$Res>;
  @override
  $Res call(
      {String url, String translationId, String? seasonId, String? seriesId});
}

/// @nodoc
class __$$GetVideosEventCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res>
    implements _$$GetVideosEventCopyWith<$Res> {
  __$$GetVideosEventCopyWithImpl(
      _$GetVideosEvent _value, $Res Function(_$GetVideosEvent) _then)
      : super(_value, (v) => _then(v as _$GetVideosEvent));

  @override
  _$GetVideosEvent get _value => super._value as _$GetVideosEvent;

  @override
  $Res call({
    Object? url = freezed,
    Object? translationId = freezed,
    Object? seasonId = freezed,
    Object? seriesId = freezed,
  }) {
    return _then(_$GetVideosEvent(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      translationId == freezed
          ? _value.translationId
          : translationId // ignore: cast_nullable_to_non_nullable
              as String,
      seasonId == freezed
          ? _value.seasonId
          : seasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesId == freezed
          ? _value.seriesId
          : seriesId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetVideosEvent implements GetVideosEvent {
  const _$GetVideosEvent(this.url, this.translationId,
      [this.seasonId, this.seriesId]);

  @override
  final String url;
  @override
  final String translationId;
  @override
  final String? seasonId;
  @override
  final String? seriesId;

  @override
  String toString() {
    return 'VideoEvent.getVideos(url: $url, translationId: $translationId, seasonId: $seasonId, seriesId: $seriesId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVideosEvent &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.translationId, translationId) &&
            const DeepCollectionEquality().equals(other.seasonId, seasonId) &&
            const DeepCollectionEquality().equals(other.seriesId, seriesId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(translationId),
      const DeepCollectionEquality().hash(seasonId),
      const DeepCollectionEquality().hash(seriesId));

  @JsonKey(ignore: true)
  @override
  _$$GetVideosEventCopyWith<_$GetVideosEvent> get copyWith =>
      __$$GetVideosEventCopyWithImpl<_$GetVideosEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, String translationId,
            String? seasonId, String? seriesId)
        getVideos,
  }) {
    return getVideos(url, translationId, seasonId, seriesId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url, String translationId, String? seasonId,
            String? seriesId)?
        getVideos,
  }) {
    return getVideos?.call(url, translationId, seasonId, seriesId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, String translationId, String? seasonId,
            String? seriesId)?
        getVideos,
    required TResult orElse(),
  }) {
    if (getVideos != null) {
      return getVideos(url, translationId, seasonId, seriesId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVideosEvent value) getVideos,
  }) {
    return getVideos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetVideosEvent value)? getVideos,
  }) {
    return getVideos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVideosEvent value)? getVideos,
    required TResult orElse(),
  }) {
    if (getVideos != null) {
      return getVideos(this);
    }
    return orElse();
  }
}

abstract class GetVideosEvent implements VideoEvent {
  const factory GetVideosEvent(final String url, final String translationId,
      [final String? seasonId, final String? seriesId]) = _$GetVideosEvent;

  @override
  String get url;
  @override
  String get translationId;
  @override
  String? get seasonId;
  @override
  String? get seriesId;
  @override
  @JsonKey(ignore: true)
  _$$GetVideosEventCopyWith<_$GetVideosEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> videos) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoInitialState value) initial,
    required TResult Function(_VideoLoadingState value) loading,
    required TResult Function(_VideoErrorState value) error,
    required TResult Function(_VideoSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res> implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  final VideoState _value;
  // ignore: unused_field
  final $Res Function(VideoState) _then;
}

/// @nodoc
abstract class _$$_VideoInitialStateCopyWith<$Res> {
  factory _$$_VideoInitialStateCopyWith(_$_VideoInitialState value,
          $Res Function(_$_VideoInitialState) then) =
      __$$_VideoInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VideoInitialStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res>
    implements _$$_VideoInitialStateCopyWith<$Res> {
  __$$_VideoInitialStateCopyWithImpl(
      _$_VideoInitialState _value, $Res Function(_$_VideoInitialState) _then)
      : super(_value, (v) => _then(v as _$_VideoInitialState));

  @override
  _$_VideoInitialState get _value => super._value as _$_VideoInitialState;
}

/// @nodoc

class _$_VideoInitialState implements _VideoInitialState {
  const _$_VideoInitialState();

  @override
  String toString() {
    return 'VideoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VideoInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> videos) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
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
    required TResult Function(_VideoInitialState value) initial,
    required TResult Function(_VideoLoadingState value) loading,
    required TResult Function(_VideoErrorState value) error,
    required TResult Function(_VideoSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _VideoInitialState implements VideoState {
  const factory _VideoInitialState() = _$_VideoInitialState;
}

/// @nodoc
abstract class _$$_VideoLoadingStateCopyWith<$Res> {
  factory _$$_VideoLoadingStateCopyWith(_$_VideoLoadingState value,
          $Res Function(_$_VideoLoadingState) then) =
      __$$_VideoLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VideoLoadingStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res>
    implements _$$_VideoLoadingStateCopyWith<$Res> {
  __$$_VideoLoadingStateCopyWithImpl(
      _$_VideoLoadingState _value, $Res Function(_$_VideoLoadingState) _then)
      : super(_value, (v) => _then(v as _$_VideoLoadingState));

  @override
  _$_VideoLoadingState get _value => super._value as _$_VideoLoadingState;
}

/// @nodoc

class _$_VideoLoadingState implements _VideoLoadingState {
  const _$_VideoLoadingState();

  @override
  String toString() {
    return 'VideoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VideoLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> videos) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
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
    required TResult Function(_VideoInitialState value) initial,
    required TResult Function(_VideoLoadingState value) loading,
    required TResult Function(_VideoErrorState value) error,
    required TResult Function(_VideoSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _VideoLoadingState implements VideoState {
  const factory _VideoLoadingState() = _$_VideoLoadingState;
}

/// @nodoc
abstract class _$$_VideoErrorStateCopyWith<$Res> {
  factory _$$_VideoErrorStateCopyWith(
          _$_VideoErrorState value, $Res Function(_$_VideoErrorState) then) =
      __$$_VideoErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$$_VideoErrorStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res>
    implements _$$_VideoErrorStateCopyWith<$Res> {
  __$$_VideoErrorStateCopyWithImpl(
      _$_VideoErrorState _value, $Res Function(_$_VideoErrorState) _then)
      : super(_value, (v) => _then(v as _$_VideoErrorState));

  @override
  _$_VideoErrorState get _value => super._value as _$_VideoErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_VideoErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_VideoErrorState implements _VideoErrorState {
  const _$_VideoErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'VideoState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_VideoErrorStateCopyWith<_$_VideoErrorState> get copyWith =>
      __$$_VideoErrorStateCopyWithImpl<_$_VideoErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> videos) success,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
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
    required TResult Function(_VideoInitialState value) initial,
    required TResult Function(_VideoLoadingState value) loading,
    required TResult Function(_VideoErrorState value) error,
    required TResult Function(_VideoSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _VideoErrorState implements VideoState {
  const factory _VideoErrorState(final Object exception) = _$_VideoErrorState;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_VideoErrorStateCopyWith<_$_VideoErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_VideoSuccessStateCopyWith<$Res> {
  factory _$$_VideoSuccessStateCopyWith(_$_VideoSuccessState value,
          $Res Function(_$_VideoSuccessState) then) =
      __$$_VideoSuccessStateCopyWithImpl<$Res>;
  $Res call({Map<String, String> videos});
}

/// @nodoc
class __$$_VideoSuccessStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res>
    implements _$$_VideoSuccessStateCopyWith<$Res> {
  __$$_VideoSuccessStateCopyWithImpl(
      _$_VideoSuccessState _value, $Res Function(_$_VideoSuccessState) _then)
      : super(_value, (v) => _then(v as _$_VideoSuccessState));

  @override
  _$_VideoSuccessState get _value => super._value as _$_VideoSuccessState;

  @override
  $Res call({
    Object? videos = freezed,
  }) {
    return _then(_$_VideoSuccessState(
      videos == freezed
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_VideoSuccessState implements _VideoSuccessState {
  const _$_VideoSuccessState(final Map<String, String> videos)
      : _videos = videos;

  final Map<String, String> _videos;
  @override
  Map<String, String> get videos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_videos);
  }

  @override
  String toString() {
    return 'VideoState.success(videos: $videos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoSuccessState &&
            const DeepCollectionEquality().equals(other._videos, _videos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_videos));

  @JsonKey(ignore: true)
  @override
  _$$_VideoSuccessStateCopyWith<_$_VideoSuccessState> get copyWith =>
      __$$_VideoSuccessStateCopyWithImpl<_$_VideoSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(Map<String, String> videos) success,
  }) {
    return success(videos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
  }) {
    return success?.call(videos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(Map<String, String> videos)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(videos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoInitialState value) initial,
    required TResult Function(_VideoLoadingState value) loading,
    required TResult Function(_VideoErrorState value) error,
    required TResult Function(_VideoSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoInitialState value)? initial,
    TResult Function(_VideoLoadingState value)? loading,
    TResult Function(_VideoErrorState value)? error,
    TResult Function(_VideoSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _VideoSuccessState implements VideoState {
  const factory _VideoSuccessState(final Map<String, String> videos) =
      _$_VideoSuccessState;

  Map<String, String> get videos;
  @JsonKey(ignore: true)
  _$$_VideoSuccessStateCopyWith<_$_VideoSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
