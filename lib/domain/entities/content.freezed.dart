// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Content {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get shortInfo => throw _privateConstructorUsedError;
  String get mirrorLessUrl => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get addedToHistoryAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String shortInfo,
      String mirrorLessUrl,
      String imageUrl,
      String type,
      String? status,
      DateTime? addedToHistoryAt});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res> implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  final Content _value;
  // ignore: unused_field
  final $Res Function(Content) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? shortInfo = freezed,
    Object? mirrorLessUrl = freezed,
    Object? imageUrl = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? addedToHistoryAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortInfo: shortInfo == freezed
          ? _value.shortInfo
          : shortInfo // ignore: cast_nullable_to_non_nullable
              as String,
      mirrorLessUrl: mirrorLessUrl == freezed
          ? _value.mirrorLessUrl
          : mirrorLessUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      addedToHistoryAt: addedToHistoryAt == freezed
          ? _value.addedToHistoryAt
          : addedToHistoryAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$_ContentCopyWith(
          _$_Content value, $Res Function(_$_Content) then) =
      __$$_ContentCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String shortInfo,
      String mirrorLessUrl,
      String imageUrl,
      String type,
      String? status,
      DateTime? addedToHistoryAt});
}

/// @nodoc
class __$$_ContentCopyWithImpl<$Res> extends _$ContentCopyWithImpl<$Res>
    implements _$$_ContentCopyWith<$Res> {
  __$$_ContentCopyWithImpl(_$_Content _value, $Res Function(_$_Content) _then)
      : super(_value, (v) => _then(v as _$_Content));

  @override
  _$_Content get _value => super._value as _$_Content;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? shortInfo = freezed,
    Object? mirrorLessUrl = freezed,
    Object? imageUrl = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? addedToHistoryAt = freezed,
  }) {
    return _then(_$_Content(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      shortInfo: shortInfo == freezed
          ? _value.shortInfo
          : shortInfo // ignore: cast_nullable_to_non_nullable
              as String,
      mirrorLessUrl: mirrorLessUrl == freezed
          ? _value.mirrorLessUrl
          : mirrorLessUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      addedToHistoryAt: addedToHistoryAt == freezed
          ? _value.addedToHistoryAt
          : addedToHistoryAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Content extends _Content {
  const _$_Content(
      {required this.id,
      required this.title,
      required this.shortInfo,
      required this.mirrorLessUrl,
      required this.imageUrl,
      required this.type,
      this.status,
      this.addedToHistoryAt})
      : super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String shortInfo;
  @override
  final String mirrorLessUrl;
  @override
  final String imageUrl;
  @override
  final String type;
  @override
  final String? status;
  @override
  final DateTime? addedToHistoryAt;

  @override
  String toString() {
    return 'Content(id: $id, title: $title, shortInfo: $shortInfo, mirrorLessUrl: $mirrorLessUrl, imageUrl: $imageUrl, type: $type, status: $status, addedToHistoryAt: $addedToHistoryAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Content &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.shortInfo, shortInfo) &&
            const DeepCollectionEquality()
                .equals(other.mirrorLessUrl, mirrorLessUrl) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.addedToHistoryAt, addedToHistoryAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(shortInfo),
      const DeepCollectionEquality().hash(mirrorLessUrl),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(addedToHistoryAt));

  @JsonKey(ignore: true)
  @override
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      __$$_ContentCopyWithImpl<_$_Content>(this, _$identity);
}

abstract class _Content extends Content {
  const factory _Content(
      {required final int id,
      required final String title,
      required final String shortInfo,
      required final String mirrorLessUrl,
      required final String imageUrl,
      required final String type,
      final String? status,
      final DateTime? addedToHistoryAt}) = _$_Content;
  const _Content._() : super._();

  @override
  int get id;
  @override
  String get title;
  @override
  String get shortInfo;
  @override
  String get mirrorLessUrl;
  @override
  String get imageUrl;
  @override
  String get type;
  @override
  String? get status;
  @override
  DateTime? get addedToHistoryAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContentCopyWith<_$_Content> get copyWith =>
      throw _privateConstructorUsedError;
}
