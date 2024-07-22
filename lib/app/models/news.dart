import 'package:hive/hive.dart';

part 'news.g.dart';

@HiveType(typeId: 1)
class News extends HiveObject {
  @HiveField(0)
  String image;

  @HiveField(1)
  String title;

  @HiveField(2)
  String subtitle;

  @HiveField(3)
  String type;

  @HiveField(4)
  List<String> content;

  News({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.type,
    required this.content,
  });
}
