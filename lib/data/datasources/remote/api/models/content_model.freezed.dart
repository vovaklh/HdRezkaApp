// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentModel _$ContentModelFromJson(Map<String, dynamic> json) {
  return _ContentModel.fromJson(json);
}

/// @nodoc
mixin _$ContentModel {
  int get id => throw _privateConstructorUsedError;
  String get mirrorLessUrl => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get shortInfo => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentModelCopyWith<ContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentModelCopyWith<$Res> {
  factory $ContentModelCopyWith(
          ContentModel value, $Res Function(ContentModel) then) =
      _$ContentModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String mirrorLessUrl,
      String type,
      String title,
      String shortInfo,
      String imageUrl,
      String? status});
}

/// @nodoc
class _$ContentModelCopyWithImpl<$Res> implements $ContentModelCopyWith<$Res> {
  _$ContentModelCopyWithImpl(this._value, this._then);

  final ContentModel _value;
  // ignore: unused_field
  final $Res Function(ContentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mirrorLessUrl = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? shortInfo = freezed,
    Object? imageUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mirrorLessUrl: mirrorLessUrl == freezed
          ? _value.mirrorLessUrl
          : mirrorLessUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortInfo: shortInfo == freezed
          ? _value.shortInfo
          : shortInfo // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentModelCopyWith<$Res>
    implements $ContentModelCopyWith<$Res> {
  factory _$$_ContentModelCopyWith(
          _$_ContentModel value, $Res Function(_$_ContentModel) then) =
      __$$_ContentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String mirrorLessUrl,
      String type,
      String title,
      String shortInfo,
      String imageUrl,
      String? status});
}

/// @nodoc
class __$$_ContentModelCopyWithImpl<$Res>
    extends _$ContentModelCopyWithImpl<$Res>
    implements _$$_ContentModelCopyWith<$Res> {
  __$$_ContentModelCopyWithImpl(
      _$_ContentModel _value, $Res Function(_$_ContentModel) _then)
      : super(_value, (v) => _then(v as _$_ContentModel));

  @override
  _$_ContentModel get _value => super._value as _$_ContentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? mirrorLessUrl = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? shortInfo = freezed,
    Object? imageUrl = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ContentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      mirrorLessUrl: mirrorLessUrl == freezed
          ? _value.mirrorLessUrl
          : mirrorLessUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortInfo: shortInfo == freezed
          ? _value.shortInfo
          : shortInfo // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentModel extends _ContentModel {
  const _$_ContentModel(
      {required this.id,
      required this.mirrorLessUrl,
      required this.type,
      required this.title,
      required this.shortInfo,
      required this.imageUrl,
      this.status})
      : super._();

  factory _$_ContentModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContentModelFromJson(json);

  @override
  final int id;
  @override
  final String mirrorLessUrl;
  @override
  final String type;
  @override
  final String title;
  @override
  final String shortInfo;
  @override
  final String imageUrl;
  @override
  final String? status;

  @override
  String toString() {
    return 'ContentModel(id: $id, mirrorLessUrl: $mirrorLessUrl, type: $type, title: $title, shortInfo: $shortInfo, imageUrl: $imageUrl, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.mirrorLessUrl, mirrorLessUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.shortInfo, shortInfo) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(mirrorLessUrl),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(shortInfo),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ContentModelCopyWith<_$_ContentModel> get copyWith =>
      __$$_ContentModelCopyWithImpl<_$_ContentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentModelToJson(
      this,
    );
  }
}

abstract class _ContentModel extends ContentModel {
  const factory _ContentModel(
      {required final int id,
      required final String mirrorLessUrl,
      required final String type,
      required final String title,
      required final String shortInfo,
      required final String imageUrl,
      final String? status}) = _$_ContentModel;
  const _ContentModel._() : super._();

  factory _ContentModel.fromJson(Map<String, dynamic> json) =
      _$_ContentModel.fromJson;

  @override
  int get id;
  @override
  String get mirrorLessUrl;
  @override
  String get type;
  @override
  String get title;
  @override
  String get shortInfo;
  @override
  String get imageUrl;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_ContentModelCopyWith<_$_ContentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
