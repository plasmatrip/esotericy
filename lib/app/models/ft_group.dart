import 'package:hive/hive.dart';

part 'ft_group.g.dart';

@HiveType(typeId: 5)
class FTGroup extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String icon;

  @HiveField(2)
  List<String> content;

  FTGroup({
    required this.name,
    required this.icon,
    required this.content,
  });
}
