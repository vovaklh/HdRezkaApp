// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_category_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentCategoryWrapper {
  ContentType get type => throw _privateConstructorUsedError;
  ContentGenre get genre => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentCategoryWrapperCopyWith<ContentCategoryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCategoryWrapperCopyWith<$Res> {
  factory $ContentCategoryWrapperCopyWith(ContentCategoryWrapper value,
          $Res Function(ContentCategoryWrapper) then) =
      _$ContentCategoryWrapperCopyWithImpl<$Res>;
  $Res call({ContentType type, ContentGenre genre, int? year});
}

/// @nodoc
class _$ContentCategoryWrapperCopyWithImpl<$Res>
    implements $ContentCategoryWrapperCopyWith<$Res> {
  _$ContentCategoryWrapperCopyWithImpl(this._value, this._then);

  final ContentCategoryWrapper _value;
  // ignore: unused_field
  final $Res Function(ContentCategoryWrapper) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? genre = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentType,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as ContentGenre,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentCategoryWrapperCopyWith<$Res>
    implements $ContentCategoryWrapperCopyWith<$Res> {
  factory _$$_ContentCategoryWrapperCopyWith(_$_ContentCategoryWrapper value,
          $Res Function(_$_ContentCategoryWrapper) then) =
      __$$_ContentCategoryWrapperCopyWithImpl<$Res>;
  @override
  $Res call({ContentType type, ContentGenre genre, int? year});
}

/// @nodoc
class __$$_ContentCategoryWrapperCopyWithImpl<$Res>
    extends _$ContentCategoryWrapperCopyWithImpl<$Res>
    implements _$$_ContentCategoryWrapperCopyWith<$Res> {
  __$$_ContentCategoryWrapperCopyWithImpl(_$_ContentCategoryWrapper _value,
      $Res Function(_$_ContentCategoryWrapper) _then)
      : super(_value, (v) => _then(v as _$_ContentCategoryWrapper));

  @override
  _$_ContentCategoryWrapper get _value =>
      super._value as _$_ContentCategoryWrapper;

  @override
  $Res call({
    Object? type = freezed,
    Object? genre = freezed,
    Object? year = freezed,
  }) {
    return _then(_$_ContentCategoryWrapper(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentType,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as ContentGenre,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ContentCategoryWrapper implements _ContentCategoryWrapper {
  const _$_ContentCategoryWrapper(
      {required this.type, required this.genre, this.year});

  @override
  final ContentType type;
  @override
  final ContentGenre genre;
  @override
  final int? year;

  @override
  String toString() {
    return 'ContentCategoryWrapper(type: $type, genre: $genre, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentCategoryWrapper &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality().equals(other.year, year));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(genre),
      const DeepCollectionEquality().hash(year));

  @JsonKey(ignore: true)
  @override
  _$$_ContentCategoryWrapperCopyWith<_$_ContentCategoryWrapper> get copyWith =>
      __$$_ContentCategoryWrapperCopyWithImpl<_$_ContentCategoryWrapper>(
          this, _$identity);
}

abstract class _ContentCategoryWrapper implements ContentCategoryWrapper {
  const factory _ContentCategoryWrapper(
      {required final ContentType type,
      required final ContentGenre genre,
      final int? year}) = _$_ContentCategoryWrapper;

  @override
  ContentType get type;
  @override
  ContentGenre get genre;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_ContentCategoryWrapperCopyWith<_$_ContentCategoryWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
