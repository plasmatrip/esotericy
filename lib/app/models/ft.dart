import 'package:hive/hive.dart';

part 'ft.g.dart';

@HiveType(typeId: 6)
class FT extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String description;

  @HiveField(2)
  List<String> stageNames;

  @HiveField(3)
  List<String> stages;

  bool isNotEmpty() {
    return name.isNotEmpty && description.isNotEmpty && stages.isNotEmpty && stageNames.isNotEmpty;
  }

  FT({
    required this.name,
    required this.description,
    required this.stageNames,
    required this.stages,
  });
}
