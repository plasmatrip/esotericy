import 'package:hive/hive.dart';

part 'cards.g.dart';

@HiveType(typeId: 2)
class Cards extends HiveObject {
  @HiveField(0)
  String image;

  @HiveField(1)
  String type;

  @HiveField(2)
  List<String> description;

  Cards({
    required this.image,
    required this.type,
    required this.description,
  });
}
