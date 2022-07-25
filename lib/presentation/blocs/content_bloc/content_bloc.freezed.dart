// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentEvent {
  int get page => throw _privateConstructorUsedError;
  ContentFilter get filter => throw _privateConstructorUsedError;
  ContentType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, ContentFilter filter, ContentType type)
        getContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, ContentFilter filter, ContentType type)?
        getContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, ContentFilter filter, ContentType type)?
        getContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetContentEvent value) getContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetContentEvent value)? getContent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetContentEvent value)? getContent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentEventCopyWith<ContentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentEventCopyWith<$Res> {
  factory $ContentEventCopyWith(
          ContentEvent value, $Res Function(ContentEvent) then) =
      _$ContentEventCopyWithImpl<$Res>;
  $Res call({int page, ContentFilter filter, ContentType type});
}

/// @nodoc
class _$ContentEventCopyWithImpl<$Res> implements $ContentEventCopyWith<$Res> {
  _$ContentEventCopyWithImpl(this._value, this._then);

  final ContentEvent _value;
  // ignore: unused_field
  final $Res Function(ContentEvent) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? filter = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      filter: filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ContentFilter,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ));
  }
}

/// @nodoc
abstract class _$$GetContentEventCopyWith<$Res>
    implements $ContentEventCopyWith<$Res> {
  factory _$$GetContentEventCopyWith(
          _$GetContentEvent value, $Res Function(_$GetContentEvent) then) =
      __$$GetContentEventCopyWithImpl<$Res>;
  @override
  $Res call({int page, ContentFilter filter, ContentType type});
}

/// @nodoc
class __$$GetContentEventCopyWithImpl<$Res>
    extends _$ContentEventCopyWithImpl<$Res>
    implements _$$GetContentEventCopyWith<$Res> {
  __$$GetContentEventCopyWithImpl(
      _$GetContentEvent _value, $Res Function(_$GetContentEvent) _then)
      : super(_value, (v) => _then(v as _$GetContentEvent));

  @override
  _$GetContentEvent get _value => super._value as _$GetContentEvent;

  @override
  $Res call({
    Object? page = freezed,
    Object? filter = freezed,
    Object? type = freezed,
  }) {
    return _then(_$GetContentEvent(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      filter == freezed
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as ContentFilter,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentType,
    ));
  }
}

/// @nodoc

class _$GetContentEvent implements GetContentEvent {
  const _$GetContentEvent(this.page, this.filter, this.type);

  @override
  final int page;
  @override
  final ContentFilter filter;
  @override
  final ContentType type;

  @override
  String toString() {
    return 'ContentEvent.getContent(page: $page, filter: $filter, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetContentEvent &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$GetContentEventCopyWith<_$GetContentEvent> get copyWith =>
      __$$GetContentEventCopyWithImpl<_$GetContentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, ContentFilter filter, ContentType type)
        getContent,
  }) {
    return getContent(page, filter, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int page, ContentFilter filter, ContentType type)?
        getContent,
  }) {
    return getContent?.call(page, filter, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, ContentFilter filter, ContentType type)?
        getContent,
    required TResult orElse(),
  }) {
    if (getContent != null) {
      return getContent(page, filter, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetContentEvent value) getContent,
  }) {
    return getContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetContentEvent value)? getContent,
  }) {
    return getContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetContentEvent value)? getContent,
    required TResult orElse(),
  }) {
    if (getContent != null) {
      return getContent(this);
    }
    return orElse();
  }
}

abstract class GetContentEvent implements ContentEvent {
  const factory GetContentEvent(
          final int page, final ContentFilter filter, final ContentType type) =
      _$GetContentEvent;

  @override
  int get page;
  @override
  ContentFilter get filter;
  @override
  ContentType get type;
  @override
  @JsonKey(ignore: true)
  _$$GetContentEventCopyWith<_$GetContentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content, bool isLastPage) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentInitialState value) initial,
    required TResult Function(_ContentLoadingState value) loading,
    required TResult Function(_ContentErrorState value) error,
    required TResult Function(_ContentSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateCopyWith<$Res> {
  factory $ContentStateCopyWith(
          ContentState value, $Res Function(ContentState) then) =
      _$ContentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContentStateCopyWithImpl<$Res> implements $ContentStateCopyWith<$Res> {
  _$ContentStateCopyWithImpl(this._value, this._then);

  final ContentState _value;
  // ignore: unused_field
  final $Res Function(ContentState) _then;
}

/// @nodoc
abstract class _$$_ContentInitialStateCopyWith<$Res> {
  factory _$$_ContentInitialStateCopyWith(_$_ContentInitialState value,
          $Res Function(_$_ContentInitialState) then) =
      __$$_ContentInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContentInitialStateCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements _$$_ContentInitialStateCopyWith<$Res> {
  __$$_ContentInitialStateCopyWithImpl(_$_ContentInitialState _value,
      $Res Function(_$_ContentInitialState) _then)
      : super(_value, (v) => _then(v as _$_ContentInitialState));

  @override
  _$_ContentInitialState get _value => super._value as _$_ContentInitialState;
}

/// @nodoc

class _$_ContentInitialState implements _ContentInitialState {
  const _$_ContentInitialState();

  @override
  String toString() {
    return 'ContentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContentInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content, bool isLastPage) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
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
    required TResult Function(_ContentInitialState value) initial,
    required TResult Function(_ContentLoadingState value) loading,
    required TResult Function(_ContentErrorState value) error,
    required TResult Function(_ContentSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContentInitialState implements ContentState {
  const factory _ContentInitialState() = _$_ContentInitialState;
}

/// @nodoc
abstract class _$$_ContentLoadingStateCopyWith<$Res> {
  factory _$$_ContentLoadingStateCopyWith(_$_ContentLoadingState value,
          $Res Function(_$_ContentLoadingState) then) =
      __$$_ContentLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContentLoadingStateCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements _$$_ContentLoadingStateCopyWith<$Res> {
  __$$_ContentLoadingStateCopyWithImpl(_$_ContentLoadingState _value,
      $Res Function(_$_ContentLoadingState) _then)
      : super(_value, (v) => _then(v as _$_ContentLoadingState));

  @override
  _$_ContentLoadingState get _value => super._value as _$_ContentLoadingState;
}

/// @nodoc

class _$_ContentLoadingState implements _ContentLoadingState {
  const _$_ContentLoadingState();

  @override
  String toString() {
    return 'ContentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContentLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content, bool isLastPage) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
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
    required TResult Function(_ContentInitialState value) initial,
    required TResult Function(_ContentLoadingState value) loading,
    required TResult Function(_ContentErrorState value) error,
    required TResult Function(_ContentSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ContentLoadingState implements ContentState {
  const factory _ContentLoadingState() = _$_ContentLoadingState;
}

/// @nodoc
abstract class _$$_ContentErrorStateCopyWith<$Res> {
  factory _$$_ContentErrorStateCopyWith(_$_ContentErrorState value,
          $Res Function(_$_ContentErrorState) then) =
      __$$_ContentErrorStateCopyWithImpl<$Res>;
  $Res call({Object exception});
}

/// @nodoc
class __$$_ContentErrorStateCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements _$$_ContentErrorStateCopyWith<$Res> {
  __$$_ContentErrorStateCopyWithImpl(
      _$_ContentErrorState _value, $Res Function(_$_ContentErrorState) _then)
      : super(_value, (v) => _then(v as _$_ContentErrorState));

  @override
  _$_ContentErrorState get _value => super._value as _$_ContentErrorState;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(_$_ContentErrorState(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_ContentErrorState implements _ContentErrorState {
  const _$_ContentErrorState(this.exception);

  @override
  final Object exception;

  @override
  String toString() {
    return 'ContentState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentErrorState &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_ContentErrorStateCopyWith<_$_ContentErrorState> get copyWith =>
      __$$_ContentErrorStateCopyWithImpl<_$_ContentErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content, bool isLastPage) success,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
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
    required TResult Function(_ContentInitialState value) initial,
    required TResult Function(_ContentLoadingState value) loading,
    required TResult Function(_ContentErrorState value) error,
    required TResult Function(_ContentSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ContentErrorState implements ContentState {
  const factory _ContentErrorState(final Object exception) =
      _$_ContentErrorState;

  Object get exception;
  @JsonKey(ignore: true)
  _$$_ContentErrorStateCopyWith<_$_ContentErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ContentSuccessStateCopyWith<$Res> {
  factory _$$_ContentSuccessStateCopyWith(_$_ContentSuccessState value,
          $Res Function(_$_ContentSuccessState) then) =
      __$$_ContentSuccessStateCopyWithImpl<$Res>;
  $Res call({List<Content> content, bool isLastPage});
}

/// @nodoc
class __$$_ContentSuccessStateCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res>
    implements _$$_ContentSuccessStateCopyWith<$Res> {
  __$$_ContentSuccessStateCopyWithImpl(_$_ContentSuccessState _value,
      $Res Function(_$_ContentSuccessState) _then)
      : super(_value, (v) => _then(v as _$_ContentSuccessState));

  @override
  _$_ContentSuccessState get _value => super._value as _$_ContentSuccessState;

  @override
  $Res call({
    Object? content = freezed,
    Object? isLastPage = freezed,
  }) {
    return _then(_$_ContentSuccessState(
      content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Content>,
      isLastPage == freezed
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ContentSuccessState implements _ContentSuccessState {
  const _$_ContentSuccessState(final List<Content> content, this.isLastPage)
      : _content = content;

  final List<Content> _content;
  @override
  List<Content> get content {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final bool isLastPage;

  @override
  String toString() {
    return 'ContentState.success(content: $content, isLastPage: $isLastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentSuccessState &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality()
                .equals(other.isLastPage, isLastPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(isLastPage));

  @JsonKey(ignore: true)
  @override
  _$$_ContentSuccessStateCopyWith<_$_ContentSuccessState> get copyWith =>
      __$$_ContentSuccessStateCopyWithImpl<_$_ContentSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Object exception) error,
    required TResult Function(List<Content> content, bool isLastPage) success,
  }) {
    return success(content, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
  }) {
    return success?.call(content, isLastPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Object exception)? error,
    TResult Function(List<Content> content, bool isLastPage)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(content, isLastPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentInitialState value) initial,
    required TResult Function(_ContentLoadingState value) loading,
    required TResult Function(_ContentErrorState value) error,
    required TResult Function(_ContentSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentInitialState value)? initial,
    TResult Function(_ContentLoadingState value)? loading,
    TResult Function(_ContentErrorState value)? error,
    TResult Function(_ContentSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ContentSuccessState implements ContentState {
  const factory _ContentSuccessState(
          final List<Content> content, final bool isLastPage) =
      _$_ContentSuccessState;

  List<Content> get content;
  bool get isLastPage;
  @JsonKey(ignore: true)
  _$$_ContentSuccessStateCopyWith<_$_ContentSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
