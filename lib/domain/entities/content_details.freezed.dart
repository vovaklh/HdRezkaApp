// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentDetails {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ContentAffilation get affilation => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<ContentData> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentDetailsCopyWith<ContentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailsCopyWith<$Res> {
  factory $ContentDetailsCopyWith(
          ContentDetails value, $Res Function(ContentDetails) then) =
      _$ContentDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String url,
      String title,
      ContentAffilation affilation,
      String description,
      String imageUrl,
      List<ContentData> data});
}

/// @nodoc
class _$ContentDetailsCopyWithImpl<$Res>
    implements $ContentDetailsCopyWith<$Res> {
  _$ContentDetailsCopyWithImpl(this._value, this._then);

  final ContentDetails _value;
  // ignore: unused_field
  final $Res Function(ContentDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? affilation = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      affilation: affilation == freezed
          ? _value.affilation
          : affilation // ignore: cast_nullable_to_non_nullable
              as ContentAffilation,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ContentData>,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentDetailsCopyWith<$Res>
    implements $ContentDetailsCopyWith<$Res> {
  factory _$$_ContentDetailsCopyWith(
          _$_ContentDetails value, $Res Function(_$_ContentDetails) then) =
      __$$_ContentDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String url,
      String title,
      ContentAffilation affilation,
      String description,
      String imageUrl,
      List<ContentData> data});
}

/// @nodoc
class __$$_ContentDetailsCopyWithImpl<$Res>
    extends _$ContentDetailsCopyWithImpl<$Res>
    implements _$$_ContentDetailsCopyWith<$Res> {
  __$$_ContentDetailsCopyWithImpl(
      _$_ContentDetails _value, $Res Function(_$_ContentDetails) _then)
      : super(_value, (v) => _then(v as _$_ContentDetails));

  @override
  _$_ContentDetails get _value => super._value as _$_ContentDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? title = freezed,
    Object? affilation = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ContentDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      affilation: affilation == freezed
          ? _value.affilation
          : affilation // ignore: cast_nullable_to_non_nullable
              as ContentAffilation,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ContentData>,
    ));
  }
}

/// @nodoc

class _$_ContentDetails implements _ContentDetails {
  const _$_ContentDetails(
      {required this.id,
      required this.url,
      required this.title,
      required this.affilation,
      required this.description,
      required this.imageUrl,
      required final List<ContentData> data})
      : _data = data;

  @override
  final int id;
  @override
  final String url;
  @override
  final String title;
  @override
  final ContentAffilation affilation;
  @override
  final String description;
  @override
  final String imageUrl;
  final List<ContentData> _data;
  @override
  List<ContentData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ContentDetails(id: $id, url: $url, title: $title, affilation: $affilation, description: $description, imageUrl: $imageUrl, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentDetails &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.affilation, affilation) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(affilation),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_ContentDetailsCopyWith<_$_ContentDetails> get copyWith =>
      __$$_ContentDetailsCopyWithImpl<_$_ContentDetails>(this, _$identity);
}

abstract class _ContentDetails implements ContentDetails {
  const factory _ContentDetails(
      {required final int id,
      required final String url,
      required final String title,
      required final ContentAffilation affilation,
      required final String description,
      required final String imageUrl,
      required final List<ContentData> data}) = _$_ContentDetails;

  @override
  int get id;
  @override
  String get url;
  @override
  String get title;
  @override
  ContentAffilation get affilation;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  List<ContentData> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ContentDetailsCopyWith<_$_ContentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
