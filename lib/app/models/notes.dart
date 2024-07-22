import 'package:hive/hive.dart';

part 'notes.g.dart';

@HiveType(typeId: 4)
class Notes extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  String tag;

  @HiveField(2)
  DateTime? date;

  @HiveField(3)
  List<String> cards;

  @HiveField(4)
  String comment;

  bool isNotEmpty() {
    return name.isNotEmpty && tag.isNotEmpty && date != null && cards.isNotEmpty & comment.isNotEmpty;
  }

  void copyWith(Notes note) {
    name = note.name;
    tag = note.tag;
    date = note.date;
    cards = note.cards;
    comment = note.comment;
  }

  Notes({
    required this.name,
    required this.tag,
    required this.cards,
    required this.comment,
    this.date,
  });
}
