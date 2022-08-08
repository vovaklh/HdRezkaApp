// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentDetailsEvent {
  String get mirrorLessUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mirrorLessUrl) getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mirrorLessUrl)? getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mirrorLessUrl)? getDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetContentDetailsEvent value) getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetContentDetailsEvent value)? getDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetContentDetailsEvent value)? getDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentDetailsEventCopyWith<ContentDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailsEventCopyWith<$Res> {
  factory $ContentDetailsEventCopyWith(
          ContentDetailsEvent value, $Res Function(ContentDetailsEvent) then) =
      _$ContentDetailsEventCopyWithImpl<$Res>;
  $Res call({String mirrorLessUrl});
}

/// @nodoc
class _$ContentDetailsEventCopyWithImpl<$Res>
    implements $ContentDetailsEventCopyWith<$Res> {
  _$ContentDetailsEventCopyWithImpl(this._value, this._then);

  final ContentDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(ContentDetailsEvent) _then;

  @override
  $Res call({
    Object? mirrorLessUrl = freezed,
  }) {
    return _then(_value.copyWith(
      mirrorLessUrl: mirrorLessUrl == freezed
          ? _value.mirrorLessUrl
          : mirrorLessUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetContentDetailsEventCopyWith<$Res>
    implements $ContentDetailsEventCopyWith<$Res> {
  factory _$$GetContentDetailsEventCopyWith(_$GetContentDetailsEvent value,
          $Res Function(_$GetContentDetailsEvent) then) =
      __$$GetContentDetailsEventCopyWithImpl<$Res>;
  @override
  $Res call({String mirrorLessUrl});
}

/// @nodoc
class __$$GetContentDetailsEventCopyWithImpl<$Res>
    extends _$ContentDetailsEventCopyWithImpl<$Res>
    implements _$$GetContentDetailsEventCopyWith<$Res> {
  __$$GetContentDetailsEventCopyWithImpl(_$GetContentDetailsEvent _value,
      $Res Function(_$GetContentDetailsEvent) _then)
      : super(_value, (v) => _then(v as _$GetContentDetailsEvent));

  @override
  _$GetContentDetailsEvent get _value =>
      super._value as _$GetContentDetailsEvent;

  @override
  $Res call({
    Object? mirrorLessUrl = freezed,
  }) {
    return _then(_$GetContentDetailsEvent(
      mirrorLessUrl == freezed
          ? _value.mirrorLessUrl
          : mirrorLessUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetContentDetailsEvent implements GetContentDetailsEvent {
  const _$GetContentDetailsEvent(this.mirrorLessUrl);

  @override
  final String mirrorLessUrl;

  @override
  String toString() {
    return 'ContentDetailsEvent.getDetails(mirrorLessUrl: $mirrorLessUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContentDetailsEvent &&
            const DeepCollectionEquality()
                .equals(other.mirrorLessUrl, mirrorLessUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mirrorLessUrl));

  @JsonKey(ignore: true)
  @override
  _$$GetContentDetailsEventCopyWith<_$GetContentDetailsEvent> get copyWith =>
      __$$GetContentDetailsEventCopyWithImpl<_$GetContentDetailsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mirrorLessUrl) getDetails,
  }) {
    return getDetails(mirrorLessUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String mirrorLessUrl)? getDetails,
  }) {
    return getDetails?.call(mirrorLessUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mirrorLessUrl)? getDetails,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(mirrorLessUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetContentDetailsEvent value) getDetails,
  }) {
    return getDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetContentDetailsEvent value)? getDetails,
  }) {
    return getDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetContentDetailsEvent value)? getDetails,
    required TResult orElse(),
  }) {
    if (getDetails != null) {
      return getDetails(this);
    }
    return orElse();
  }
}

abstract class GetContentDetailsEvent implements ContentDetailsEvent {
  const factory GetContentDetailsEvent(final String mirrorLessUrl) =
      _$GetContentDetailsEvent;

  @override
  String get mirrorLessUrl;
  @override
  @JsonKey(ignore: true)
  _$$GetContentDetailsEventCopyWith<_$GetContentDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContentDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(ContentDetails contentDetails) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentDetailsInitialState value) initial,
    required TResult Function(_ContentDetailsLoadingState value) loading,
    required TResult Function(_ContentDetailsErrorState value) error,
    required TResult Function(_ContentDetailsSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailsStateCopyWith<$Res> {
  factory $ContentDetailsStateCopyWith(
          ContentDetailsState value, $Res Function(ContentDetailsState) then) =
      _$ContentDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContentDetailsStateCopyWithImpl<$Res>
    implements $ContentDetailsStateCopyWith<$Res> {
  _$ContentDetailsStateCopyWithImpl(this._value, this._then);

  final ContentDetailsState _value;
  // ignore: unused_field
  final $Res Function(ContentDetailsState) _then;
}

/// @nodoc
abstract class _$$_ContentDetailsInitialStateCopyWith<$Res> {
  factory _$$_ContentDetailsInitialStateCopyWith(
          _$_ContentDetailsInitialState value,
          $Res Function(_$_ContentDetailsInitialState) then) =
      __$$_ContentDetailsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContentDetailsInitialStateCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res>
    implements _$$_ContentDetailsInitialStateCopyWith<$Res> {
  __$$_ContentDetailsInitialStateCopyWithImpl(
      _$_ContentDetailsInitialState _value,
      $Res Function(_$_ContentDetailsInitialState) _then)
      : super(_value, (v) => _then(v as _$_ContentDetailsInitialState));

  @override
  _$_ContentDetailsInitialState get _value =>
      super._value as _$_ContentDetailsInitialState;
}

/// @nodoc

class _$_ContentDetailsInitialState implements _ContentDetailsInitialState {
  const _$_ContentDetailsInitialState();

  @override
  String toString() {
    return 'ContentDetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentDetailsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(ContentDetails contentDetails) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
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
    required TResult Function(_ContentDetailsInitialState value) initial,
    required TResult Function(_ContentDetailsLoadingState value) loading,
    required TResult Function(_ContentDetailsErrorState value) error,
    required TResult Function(_ContentDetailsSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContentDetailsInitialState implements ContentDetailsState {
  const factory _ContentDetailsInitialState() = _$_ContentDetailsInitialState;
}

/// @nodoc
abstract class _$$_ContentDetailsLoadingStateCopyWith<$Res> {
  factory _$$_ContentDetailsLoadingStateCopyWith(
          _$_ContentDetailsLoadingState value,
          $Res Function(_$_ContentDetailsLoadingState) then) =
      __$$_ContentDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContentDetailsLoadingStateCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res>
    implements _$$_ContentDetailsLoadingStateCopyWith<$Res> {
  __$$_ContentDetailsLoadingStateCopyWithImpl(
      _$_ContentDetailsLoadingState _value,
      $Res Function(_$_ContentDetailsLoadingState) _then)
      : super(_value, (v) => _then(v as _$_ContentDetailsLoadingState));

  @override
  _$_ContentDetailsLoadingState get _value =>
      super._value as _$_ContentDetailsLoadingState;
}

/// @nodoc

class _$_ContentDetailsLoadingState implements _ContentDetailsLoadingState {
  const _$_ContentDetailsLoadingState();

  @override
  String toString() {
    return 'ContentDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(ContentDetails contentDetails) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
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
    required TResult Function(_ContentDetailsInitialState value) initial,
    required TResult Function(_ContentDetailsLoadingState value) loading,
    required TResult Function(_ContentDetailsErrorState value) error,
    required TResult Function(_ContentDetailsSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContentDetailsLoadingState implements ContentDetailsState {
  const factory _ContentDetailsLoadingState() = _$_ContentDetailsLoadingState;
}

/// @nodoc
abstract class _$$_ContentDetailsErrorStateCopyWith<$Res> {
  factory _$$_ContentDetailsErrorStateCopyWith(
          _$_ContentDetailsErrorState value,
          $Res Function(_$_ContentDetailsErrorState) then) =
      __$$_ContentDetailsErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$$_ContentDetailsErrorStateCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res>
    implements _$$_ContentDetailsErrorStateCopyWith<$Res> {
  __$$_ContentDetailsErrorStateCopyWithImpl(_$_ContentDetailsErrorState _value,
      $Res Function(_$_ContentDetailsErrorState) _then)
      : super(_value, (v) => _then(v as _$_ContentDetailsErrorState));

  @override
  _$_ContentDetailsErrorState get _value =>
      super._value as _$_ContentDetailsErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_ContentDetailsErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_ContentDetailsErrorState implements _ContentDetailsErrorState {
  const _$_ContentDetailsErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'ContentDetailsState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentDetailsErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_ContentDetailsErrorStateCopyWith<_$_ContentDetailsErrorState>
      get copyWith => __$$_ContentDetailsErrorStateCopyWithImpl<
          _$_ContentDetailsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(ContentDetails contentDetails) success,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
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
    required TResult Function(_ContentDetailsInitialState value) initial,
    required TResult Function(_ContentDetailsLoadingState value) loading,
    required TResult Function(_ContentDetailsErrorState value) error,
    required TResult Function(_ContentDetailsSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContentDetailsErrorState implements ContentDetailsState {
  const factory _ContentDetailsErrorState(final Object exception) =
      _$_ContentDetailsErrorState;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_ContentDetailsErrorStateCopyWith<_$_ContentDetailsErrorState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContentDetailsSuccessStateCopyWith<$Res> {
  factory _$$_ContentDetailsSuccessStateCopyWith(
          _$_ContentDetailsSuccessState value,
          $Res Function(_$_ContentDetailsSuccessState) then) =
      __$$_ContentDetailsSuccessStateCopyWithImpl<$Res>;
  $Res call({ContentDetails contentDetails});

  $ContentDetailsCopyWith<$Res> get contentDetails;
}

/// @nodoc
class __$$_ContentDetailsSuccessStateCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res>
    implements _$$_ContentDetailsSuccessStateCopyWith<$Res> {
  __$$_ContentDetailsSuccessStateCopyWithImpl(
      _$_ContentDetailsSuccessState _value,
      $Res Function(_$_ContentDetailsSuccessState) _then)
      : super(_value, (v) => _then(v as _$_ContentDetailsSuccessState));

  @override
  _$_ContentDetailsSuccessState get _value =>
      super._value as _$_ContentDetailsSuccessState;

  @override
  $Res call({
    Object? contentDetails = freezed,
  }) {
    return _then(_$_ContentDetailsSuccessState(
      contentDetails == freezed
          ? _value.contentDetails
          : contentDetails // ignore: cast_nullable_to_non_nullable
              as ContentDetails,
    ));
  }

  @override
  $ContentDetailsCopyWith<$Res> get contentDetails {
    return $ContentDetailsCopyWith<$Res>(_value.contentDetails, (value) {
      return _then(_value.copyWith(contentDetails: value));
    });
  }
}

/// @nodoc

class _$_ContentDetailsSuccessState implements _ContentDetailsSuccessState {
  const _$_ContentDetailsSuccessState(this.contentDetails);

  @override
  final ContentDetails contentDetails;

  @override
  String toString() {
    return 'ContentDetailsState.success(contentDetails: $contentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentDetailsSuccessState &&
            const DeepCollectionEquality()
                .equals(other.contentDetails, contentDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(contentDetails));

  @JsonKey(ignore: true)
  @override
  _$$_ContentDetailsSuccessStateCopyWith<_$_ContentDetailsSuccessState>
      get copyWith => __$$_ContentDetailsSuccessStateCopyWithImpl<
          _$_ContentDetailsSuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(ContentDetails contentDetails) success,
  }) {
    return success(contentDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
  }) {
    return success?.call(contentDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(ContentDetails contentDetails)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(contentDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentDetailsInitialState value) initial,
    required TResult Function(_ContentDetailsLoadingState value) loading,
    required TResult Function(_ContentDetailsErrorState value) error,
    required TResult Function(_ContentDetailsSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentDetailsInitialState value)? initial,
    TResult Function(_ContentDetailsLoadingState value)? loading,
    TResult Function(_ContentDetailsErrorState value)? error,
    TResult Function(_ContentDetailsSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContentDetailsSuccessState implements ContentDetailsState {
  const factory _ContentDetailsSuccessState(
      final ContentDetails contentDetails) = _$_ContentDetailsSuccessState;

  ContentDetails get contentDetails;
  @JsonKey(ignore: true)
  _$$_ContentDetailsSuccessStateCopyWith<_$_ContentDetailsSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}
