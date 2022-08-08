import 'package:floor/floor.dart';

@Entity(tableName: 'Favorites')
class ContentFavoriteDbModel {
  @primaryKey
  final int id;

  final String mirrorLessUrl;

  final String type;

  final String title;

  final String shortInfo;

  final String imageUrl;

  final String? status;

  final DateTime addedAt;

  ContentFavoriteDbModel({
    required this.id,
    required this.mirrorLessUrl,
    required this.type,
    required this.title,
    required this.shortInfo,
    required this.imageUrl,
    required this.addedAt,
    this.status,
  });
}
