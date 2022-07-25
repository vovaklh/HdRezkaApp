// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_filter_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentFilterWrapper _$ContentFilterWrapperFromJson(Map<String, dynamic> json) {
  return _ContentFilterWrapper.fromJson(json);
}

/// @nodoc
mixin _$ContentFilterWrapper {
  ContentFilter get filter => throw _privateConstructorUsedError;
  ContentType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentFilterWrapperCopyWith<ContentFilterWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentFilterWrapperCopyWith<$Res> {
  factory $ContentFilterWrapperCopyWith(ContentFilterWrapper value,
          $Res Function(ContentFilterWrapper) then) =
      _$ContentFilterWrapperCopyWithImpl<$Res>;
  $Res call({ContentFilter filter, ContentType type});
}

/// @nodoc
class _$ContentFilterWrapperCopyWithImpl<$Res>
    implements $ContentFilterWrapperCopyWith<$Res> {
  _$ContentFilterWrapperCopyWithImpl(this._value, this._then);

  final ContentFilterWrapper _value;
  // ignore: unused_field
  final $Res Function(ContentFilterWrapper) _then;

  @override
  $Res call({
    Object? filter = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_ContentFilterWrapperCopyWith<$Res>
    implements $ContentFilterWrapperCopyWith<$Res> {
  factory _$$_ContentFilterWrapperCopyWith(_$_ContentFilterWrapper value,
          $Res Function(_$_ContentFilterWrapper) then) =
      __$$_ContentFilterWrapperCopyWithImpl<$Res>;
  @override
  $Res call({ContentFilter filter, ContentType type});
}

/// @nodoc
class __$$_ContentFilterWrapperCopyWithImpl<$Res>
    extends _$ContentFilterWrapperCopyWithImpl<$Res>
    implements _$$_ContentFilterWrapperCopyWith<$Res> {
  __$$_ContentFilterWrapperCopyWithImpl(_$_ContentFilterWrapper _value,
      $Res Function(_$_ContentFilterWrapper) _then)
      : super(_value, (v) => _then(v as _$_ContentFilterWrapper));

  @override
  _$_ContentFilterWrapper get _value => super._value as _$_ContentFilterWrapper;

  @override
  $Res call({
    Object? filter = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_ContentFilterWrapper(
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
@JsonSerializable()
class _$_ContentFilterWrapper implements _ContentFilterWrapper {
  const _$_ContentFilterWrapper({required this.filter, required this.type});

  factory _$_ContentFilterWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_ContentFilterWrapperFromJson(json);

  @override
  final ContentFilter filter;
  @override
  final ContentType type;

  @override
  String toString() {
    return 'ContentFilterWrapper(filter: $filter, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentFilterWrapper &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_ContentFilterWrapperCopyWith<_$_ContentFilterWrapper> get copyWith =>
      __$$_ContentFilterWrapperCopyWithImpl<_$_ContentFilterWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentFilterWrapperToJson(
      this,
    );
  }
}

abstract class _ContentFilterWrapper implements ContentFilterWrapper {
  const factory _ContentFilterWrapper(
      {required final ContentFilter filter,
      required final ContentType type}) = _$_ContentFilterWrapper;

  factory _ContentFilterWrapper.fromJson(Map<String, dynamic> json) =
      _$_ContentFilterWrapper.fromJson;

  @override
  ContentFilter get filter;
  @override
  ContentType get type;
  @override
  @JsonKey(ignore: true)
  _$$_ContentFilterWrapperCopyWith<_$_ContentFilterWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
