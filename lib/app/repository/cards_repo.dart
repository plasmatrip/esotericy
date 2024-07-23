import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/models/cards.dart';
import 'package:esotericy/app/models/layout.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

const List<String> typesOfCards = ['Арканы', 'Жезлы', 'Пентакли', 'Кубки', 'Мечи'];
const List<String> pathName = ['major_arcana', 'cups', 'pentacles', 'swords', 'wands'];

class CardsRepo with ChangeNotifier {
  Box cardsRepo = Hive.box<Cards>(Boxes.cards);
  Box layoutRepo = Hive.box<Layout>(Boxes.layout);

  // Future<void> initImages() async {
  //   final assetManifest = await AssetManifest.loadFromAssetBundle(rootBundle);
  //   _cardsImages = assetManifest.listAssets().where((string) => string.startsWith("assets/images/cards/")).toList();
  // }

  int _selectedType = 0;

  int get selectedType => _selectedType;
  set selectedType(int value) {
    _selectedType = value;
    notifyListeners();
  }

  Iterable imagesList({int? typeOfCards}) {
    typeOfCards ??= _selectedType;
    return cardsRepo.values.where((element) => (element as Cards).type == pathName[typeOfCards!]);
  }

  Iterable layout() {
    return layoutRepo.values;
  }

  bool editMode = false;
  int editKey = 0;

  Layout _layout = Layout(name: '', content: ['[TITLE]', '', '']);

  String get name => _layout.name;
  set name(String value) {
    _layout.name = value;
    notifyListeners();
  }

  String get description => _layout.content[1];
  set description(String value) {
    _layout.content[1] = value;
    notifyListeners();
  }

  String get meanings => _layout.content[2];
  set meanings(String value) {
    _layout.content[2] = value;
    notifyListeners();
  }

  void clear() {
    _layout = Layout(name: '', content: ['[TITLE]', '', '']);
    editKey = 0;
    editMode = false;
  }

  Future<void> save() async {
    if (editMode) {
      Layout layout = layoutRepo.get(editKey);
      layout.copyWith(_layout);
      layout.save();
    } else {
      _layout.content[1] = '[TEXT]${_layout.content[1]}';
      _layout.content[2] = '[TEXT]${_layout.content[2]}';
      layoutRepo.add(_layout);
    }
    clear();
    notifyListeners();
  }

  Future<void> delete(int key) async {
    Layout layout = layoutRepo.get(editKey);
    layout.delete();
    notifyListeners();
  }

  void edit(int key) {
    _layout.copyWith(layoutRepo.get(key));
    editMode = true;
    editKey = key;
  }

  bool canSave() {
    return _layout.isNotEmpty();
  }
}
