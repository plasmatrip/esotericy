import 'package:hive/hive.dart';

part 'layout.g.dart';

@HiveType(typeId: 3)
class Layout extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  List<String> content;

  bool isNotEmpty() {
    return name.isNotEmpty && content[1].isNotEmpty && content[2].isNotEmpty;
  }

  void copyWith(Layout layout) {
    name = layout.name;
    content = layout.content;
  }

  Layout({
    required this.name,
    required this.content,
  });
}
