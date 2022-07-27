// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentDetailsModel _$ContentDetailsModelFromJson(Map<String, dynamic> json) {
  return _ContentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ContentDetailsModel {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  ContentAffilation get affilation => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  @ContentDataModelListConverter()
  List<ContentDataModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentDetailsModelCopyWith<ContentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailsModelCopyWith<$Res> {
  factory $ContentDetailsModelCopyWith(
          ContentDetailsModel value, $Res Function(ContentDetailsModel) then) =
      _$ContentDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String url,
      String title,
      ContentAffilation affilation,
      String description,
      String imageUrl,
      @ContentDataModelListConverter() List<ContentDataModel> data});
}

/// @nodoc
class _$ContentDetailsModelCopyWithImpl<$Res>
    implements $ContentDetailsModelCopyWith<$Res> {
  _$ContentDetailsModelCopyWithImpl(this._value, this._then);

  final ContentDetailsModel _value;
  // ignore: unused_field
  final $Res Function(ContentDetailsModel) _then;

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
              as List<ContentDataModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_ContentDetailsModelCopyWith<$Res>
    implements $ContentDetailsModelCopyWith<$Res> {
  factory _$$_ContentDetailsModelCopyWith(_$_ContentDetailsModel value,
          $Res Function(_$_ContentDetailsModel) then) =
      __$$_ContentDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String url,
      String title,
      ContentAffilation affilation,
      String description,
      String imageUrl,
      @ContentDataModelListConverter() List<ContentDataModel> data});
}

/// @nodoc
class __$$_ContentDetailsModelCopyWithImpl<$Res>
    extends _$ContentDetailsModelCopyWithImpl<$Res>
    implements _$$_ContentDetailsModelCopyWith<$Res> {
  __$$_ContentDetailsModelCopyWithImpl(_$_ContentDetailsModel _value,
      $Res Function(_$_ContentDetailsModel) _then)
      : super(_value, (v) => _then(v as _$_ContentDetailsModel));

  @override
  _$_ContentDetailsModel get _value => super._value as _$_ContentDetailsModel;

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
    return _then(_$_ContentDetailsModel(
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
              as List<ContentDataModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentDetailsModel implements _ContentDetailsModel {
  const _$_ContentDetailsModel(
      {required this.id,
      required this.url,
      required this.title,
      required this.affilation,
      required this.description,
      required this.imageUrl,
      @ContentDataModelListConverter()
          required final List<ContentDataModel> data})
      : _data = data;

  factory _$_ContentDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ContentDetailsModelFromJson(json);

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
  final List<ContentDataModel> _data;
  @override
  @ContentDataModelListConverter()
  List<ContentDataModel> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ContentDetailsModel(id: $id, url: $url, title: $title, affilation: $affilation, description: $description, imageUrl: $imageUrl, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentDetailsModel &&
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

  @JsonKey(ignore: true)
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
  _$$_ContentDetailsModelCopyWith<_$_ContentDetailsModel> get copyWith =>
      __$$_ContentDetailsModelCopyWithImpl<_$_ContentDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentDetailsModelToJson(
      this,
    );
  }
}

abstract class _ContentDetailsModel implements ContentDetailsModel {
  const factory _ContentDetailsModel(
      {required final int id,
      required final String url,
      required final String title,
      required final ContentAffilation affilation,
      required final String description,
      required final String imageUrl,
      @ContentDataModelListConverter()
          required final List<ContentDataModel> data}) = _$_ContentDetailsModel;

  factory _ContentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ContentDetailsModel.fromJson;

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
  @ContentDataModelListConverter()
  List<ContentDataModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_ContentDetailsModelCopyWith<_$_ContentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
