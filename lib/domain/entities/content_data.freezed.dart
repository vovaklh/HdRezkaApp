// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentData {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentDataCopyWith<ContentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDataCopyWith<$Res> {
  factory $ContentDataCopyWith(
          ContentData value, $Res Function(ContentData) then) =
      _$ContentDataCopyWithImpl<$Res>;
  $Res call({String name, String value});
}

/// @nodoc
class _$ContentDataCopyWithImpl<$Res> implements $ContentDataCopyWith<$Res> {
  _$ContentDataCopyWithImpl(this._value, this._then);

  final ContentData _value;
  // ignore: unused_field
  final $Res Function(ContentData) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentDataCopyWith<$Res>
    implements $ContentDataCopyWith<$Res> {
  factory _$$_ContentDataCopyWith(
          _$_ContentData value, $Res Function(_$_ContentData) then) =
      __$$_ContentDataCopyWithImpl<$Res>;
  @override
  $Res call({String name, String value});
}

/// @nodoc
class __$$_ContentDataCopyWithImpl<$Res> extends _$ContentDataCopyWithImpl<$Res>
    implements _$$_ContentDataCopyWith<$Res> {
  __$$_ContentDataCopyWithImpl(
      _$_ContentData _value, $Res Function(_$_ContentData) _then)
      : super(_value, (v) => _then(v as _$_ContentData));

  @override
  _$_ContentData get _value => super._value as _$_ContentData;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_ContentData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ContentData implements _ContentData {
  const _$_ContentData({required this.name, required this.value});

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'ContentData(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentData &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ContentDataCopyWith<_$_ContentData> get copyWith =>
      __$$_ContentDataCopyWithImpl<_$_ContentData>(this, _$identity);
}

abstract class _ContentData implements ContentData {
  const factory _ContentData(
      {required final String name,
      required final String value}) = _$_ContentData;

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ContentDataCopyWith<_$_ContentData> get copyWith =>
      throw _privateConstructorUsedError;
}
