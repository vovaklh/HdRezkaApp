// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentDataModel {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentDataModelCopyWith<ContentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDataModelCopyWith<$Res> {
  factory $ContentDataModelCopyWith(
          ContentDataModel value, $Res Function(ContentDataModel) then) =
      _$ContentDataModelCopyWithImpl<$Res>;
  $Res call({String name, String value});
}

/// @nodoc
class _$ContentDataModelCopyWithImpl<$Res>
    implements $ContentDataModelCopyWith<$Res> {
  _$ContentDataModelCopyWithImpl(this._value, this._then);

  final ContentDataModel _value;
  // ignore: unused_field
  final $Res Function(ContentDataModel) _then;

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
abstract class _$$_ContentDataModelCopyWith<$Res>
    implements $ContentDataModelCopyWith<$Res> {
  factory _$$_ContentDataModelCopyWith(
          _$_ContentDataModel value, $Res Function(_$_ContentDataModel) then) =
      __$$_ContentDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String value});
}

/// @nodoc
class __$$_ContentDataModelCopyWithImpl<$Res>
    extends _$ContentDataModelCopyWithImpl<$Res>
    implements _$$_ContentDataModelCopyWith<$Res> {
  __$$_ContentDataModelCopyWithImpl(
      _$_ContentDataModel _value, $Res Function(_$_ContentDataModel) _then)
      : super(_value, (v) => _then(v as _$_ContentDataModel));

  @override
  _$_ContentDataModel get _value => super._value as _$_ContentDataModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_ContentDataModel(
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

class _$_ContentDataModel extends _ContentDataModel {
  const _$_ContentDataModel({required this.name, required this.value})
      : super._();

  @override
  final String name;
  @override
  final String value;

  @override
  String toString() {
    return 'ContentDataModel(name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentDataModel &&
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
  _$$_ContentDataModelCopyWith<_$_ContentDataModel> get copyWith =>
      __$$_ContentDataModelCopyWithImpl<_$_ContentDataModel>(this, _$identity);
}

abstract class _ContentDataModel extends ContentDataModel {
  const factory _ContentDataModel(
      {required final String name,
      required final String value}) = _$_ContentDataModel;
  const _ContentDataModel._() : super._();

  @override
  String get name;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ContentDataModelCopyWith<_$_ContentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
