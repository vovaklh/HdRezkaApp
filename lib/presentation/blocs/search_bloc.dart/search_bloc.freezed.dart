// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int page) search,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, int page)? search,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int page)? search,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentSearchEvent value) search,
    required TResult Function(ResetSearchEvent value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentSearchEvent value)? search,
    TResult Function(ResetSearchEvent value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentSearchEvent value)? search,
    TResult Function(ResetSearchEvent value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$ContentSearchEventCopyWith<$Res> {
  factory _$$ContentSearchEventCopyWith(_$ContentSearchEvent value,
          $Res Function(_$ContentSearchEvent) then) =
      __$$ContentSearchEventCopyWithImpl<$Res>;
  $Res call({String query, int page});
}

/// @nodoc
class __$$ContentSearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$ContentSearchEventCopyWith<$Res> {
  __$$ContentSearchEventCopyWithImpl(
      _$ContentSearchEvent _value, $Res Function(_$ContentSearchEvent) _then)
      : super(_value, (v) => _then(v as _$ContentSearchEvent));

  @override
  _$ContentSearchEvent get _value => super._value as _$ContentSearchEvent;

  @override
  $Res call({
    Object? query = freezed,
    Object? page = freezed,
  }) {
    return _then(_$ContentSearchEvent(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ContentSearchEvent implements ContentSearchEvent {
  const _$ContentSearchEvent(this.query, this.page);

  @override
  final String query;
  @override
  final int page;

  @override
  String toString() {
    return 'SearchEvent.search(query: $query, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentSearchEvent &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.page, page));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(page));

  @JsonKey(ignore: true)
  @override
  _$$ContentSearchEventCopyWith<_$ContentSearchEvent> get copyWith =>
      __$$ContentSearchEventCopyWithImpl<_$ContentSearchEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int page) search,
    required TResult Function() reset,
  }) {
    return search(query, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, int page)? search,
    TResult Function()? reset,
  }) {
    return search?.call(query, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int page)? search,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentSearchEvent value) search,
    required TResult Function(ResetSearchEvent value) reset,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentSearchEvent value)? search,
    TResult Function(ResetSearchEvent value)? reset,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentSearchEvent value)? search,
    TResult Function(ResetSearchEvent value)? reset,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class ContentSearchEvent implements SearchEvent {
  const factory ContentSearchEvent(final String query, final int page) =
      _$ContentSearchEvent;

  String get query;
  int get page;
  @JsonKey(ignore: true)
  _$$ContentSearchEventCopyWith<_$ContentSearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetSearchEventCopyWith<$Res> {
  factory _$$ResetSearchEventCopyWith(
          _$ResetSearchEvent value, $Res Function(_$ResetSearchEvent) then) =
      __$$ResetSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetSearchEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$ResetSearchEventCopyWith<$Res> {
  __$$ResetSearchEventCopyWithImpl(
      _$ResetSearchEvent _value, $Res Function(_$ResetSearchEvent) _then)
      : super(_value, (v) => _then(v as _$ResetSearchEvent));

  @override
  _$ResetSearchEvent get _value => super._value as _$ResetSearchEvent;
}

/// @nodoc

class _$ResetSearchEvent implements ResetSearchEvent {
  const _$ResetSearchEvent();

  @override
  String toString() {
    return 'SearchEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetSearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query, int page) search,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String query, int page)? search,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, int page)? search,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentSearchEvent value) search,
    required TResult Function(ResetSearchEvent value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContentSearchEvent value)? search,
    TResult Function(ResetSearchEvent value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentSearchEvent value)? search,
    TResult Function(ResetSearchEvent value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class ResetSearchEvent implements SearchEvent {
  const factory ResetSearchEvent() = _$ResetSearchEvent;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int page, Object exception) error,
    required TResult Function(
            String query, int page, int? nextPage, List<Content> content)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchErrorState value) error,
    required TResult Function(_SearchSuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$_SearchInitialStateCopyWith<$Res> {
  factory _$$_SearchInitialStateCopyWith(_$_SearchInitialState value,
          $Res Function(_$_SearchInitialState) then) =
      __$$_SearchInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchInitialStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchInitialStateCopyWith<$Res> {
  __$$_SearchInitialStateCopyWithImpl(
      _$_SearchInitialState _value, $Res Function(_$_SearchInitialState) _then)
      : super(_value, (v) => _then(v as _$_SearchInitialState));

  @override
  _$_SearchInitialState get _value => super._value as _$_SearchInitialState;
}

/// @nodoc

class _$_SearchInitialState implements _SearchInitialState {
  const _$_SearchInitialState();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int page, Object exception) error,
    required TResult Function(
            String query, int page, int? nextPage, List<Content> content)
        success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchErrorState value) error,
    required TResult Function(_SearchSuccessState value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchInitialState implements SearchState {
  const factory _SearchInitialState() = _$_SearchInitialState;
}

/// @nodoc
abstract class _$$_SearchLoadingStateCopyWith<$Res> {
  factory _$$_SearchLoadingStateCopyWith(_$_SearchLoadingState value,
          $Res Function(_$_SearchLoadingState) then) =
      __$$_SearchLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchLoadingStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchLoadingStateCopyWith<$Res> {
  __$$_SearchLoadingStateCopyWithImpl(
      _$_SearchLoadingState _value, $Res Function(_$_SearchLoadingState) _then)
      : super(_value, (v) => _then(v as _$_SearchLoadingState));

  @override
  _$_SearchLoadingState get _value => super._value as _$_SearchLoadingState;
}

/// @nodoc

class _$_SearchLoadingState implements _SearchLoadingState {
  const _$_SearchLoadingState();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int page, Object exception) error,
    required TResult Function(
            String query, int page, int? nextPage, List<Content> content)
        success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
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
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchErrorState value) error,
    required TResult Function(_SearchSuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoadingState implements SearchState {
  const factory _SearchLoadingState() = _$_SearchLoadingState;
}

/// @nodoc
abstract class _$$_SearchErrorStateCopyWith<$Res> {
  factory _$$_SearchErrorStateCopyWith(
          _$_SearchErrorState value, $Res Function(_$_SearchErrorState) then) =
      __$$_SearchErrorStateCopyWithImpl<$Res>;
  $Res call({int page, Object exception});
}

/// @nodoc
class __$$_SearchErrorStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchErrorStateCopyWith<$Res> {
  __$$_SearchErrorStateCopyWithImpl(
      _$_SearchErrorState _value, $Res Function(_$_SearchErrorState) _then)
      : super(_value, (v) => _then(v as _$_SearchErrorState));

  @override
  _$_SearchErrorState get _value => super._value as _$_SearchErrorState;

  @override
  $Res call({
    Object? page = freezed,
    Object? exception = freezed,
  }) {
    return _then(_$_SearchErrorState(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Object,
    ));
  }
}

/// @nodoc

class _$_SearchErrorState implements _SearchErrorState {
  const _$_SearchErrorState(this.page, this.exception);

  @override
  final int page;
  @override
  final Object exception;

  @override
  String toString() {
    return 'SearchState.error(page: $page, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchErrorState &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  _$$_SearchErrorStateCopyWith<_$_SearchErrorState> get copyWith =>
      __$$_SearchErrorStateCopyWithImpl<_$_SearchErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int page, Object exception) error,
    required TResult Function(
            String query, int page, int? nextPage, List<Content> content)
        success,
  }) {
    return error(page, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
  }) {
    return error?.call(page, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(page, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchErrorState value) error,
    required TResult Function(_SearchSuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _SearchErrorState implements SearchState {
  const factory _SearchErrorState(final int page, final Object exception) =
      _$_SearchErrorState;

  int get page;
  Object get exception;
  @JsonKey(ignore: true)
  _$$_SearchErrorStateCopyWith<_$_SearchErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchSuccessStateCopyWith<$Res> {
  factory _$$_SearchSuccessStateCopyWith(_$_SearchSuccessState value,
          $Res Function(_$_SearchSuccessState) then) =
      __$$_SearchSuccessStateCopyWithImpl<$Res>;
  $Res call({String query, int page, int? nextPage, List<Content> content});
}

/// @nodoc
class __$$_SearchSuccessStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SearchSuccessStateCopyWith<$Res> {
  __$$_SearchSuccessStateCopyWithImpl(
      _$_SearchSuccessState _value, $Res Function(_$_SearchSuccessState) _then)
      : super(_value, (v) => _then(v as _$_SearchSuccessState));

  @override
  _$_SearchSuccessState get _value => super._value as _$_SearchSuccessState;

  @override
  $Res call({
    Object? query = freezed,
    Object? page = freezed,
    Object? nextPage = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_SearchSuccessState(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Content>,
    ));
  }
}

/// @nodoc

class _$_SearchSuccessState implements _SearchSuccessState {
  const _$_SearchSuccessState(
      this.query, this.page, this.nextPage, final List<Content> content)
      : _content = content;

  @override
  final String query;
  @override
  final int page;
  @override
  final int? nextPage;
  final List<Content> _content;
  @override
  List<Content> get content {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  String toString() {
    return 'SearchState.success(query: $query, page: $page, nextPage: $nextPage, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchSuccessState &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            const DeepCollectionEquality().equals(other._content, _content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(nextPage),
      const DeepCollectionEquality().hash(_content));

  @JsonKey(ignore: true)
  @override
  _$$_SearchSuccessStateCopyWith<_$_SearchSuccessState> get copyWith =>
      __$$_SearchSuccessStateCopyWithImpl<_$_SearchSuccessState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int page, Object exception) error,
    required TResult Function(
            String query, int page, int? nextPage, List<Content> content)
        success,
  }) {
    return success(query, page, nextPage, content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
  }) {
    return success?.call(query, page, nextPage, content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, Object exception)? error,
    TResult Function(
            String query, int page, int? nextPage, List<Content> content)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(query, page, nextPage, content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitialState value) initial,
    required TResult Function(_SearchLoadingState value) loading,
    required TResult Function(_SearchErrorState value) error,
    required TResult Function(_SearchSuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitialState value)? initial,
    TResult Function(_SearchLoadingState value)? loading,
    TResult Function(_SearchErrorState value)? error,
    TResult Function(_SearchSuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccessState implements SearchState {
  const factory _SearchSuccessState(final String query, final int page,
      final int? nextPage, final List<Content> content) = _$_SearchSuccessState;

  String get query;
  int get page;
  int? get nextPage;
  List<Content> get content;
  @JsonKey(ignore: true)
  _$$_SearchSuccessStateCopyWith<_$_SearchSuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
