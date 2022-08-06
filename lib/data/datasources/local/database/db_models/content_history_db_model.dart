import 'package:floor/floor.dart';

@Entity(tableName: 'History')
class ContentHistoryDbModel {
  @primaryKey
  final int id;

  final String mirrorLessUrl;

  final String type;

  final String title;

  final String shortInfo;

  final String imageUrl;

  final String? status;

  final DateTime addedAt;

  ContentHistoryDbModel({
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
