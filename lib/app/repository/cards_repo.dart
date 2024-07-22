import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const List<String> typesOfCards = ['Арканы', 'Жезлы', 'Пентакли', 'Кубки', 'Мечи'];
const List<String> pathName = ['major', 'cups', 'pentacles', 'swords', 'wands'];

class CardsRepo with ChangeNotifier {
  List<String> _cardsImages = [];

  Future<void> initImages() async {
    final assetManifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    _cardsImages = assetManifest.listAssets().where((string) => string.startsWith("assets/images/cards/")).toList();
  }

  int _selectedType = 0;

  int get selectedType => _selectedType;
  set selectedType(int value) {
    _selectedType = value;
    notifyListeners();
  }

  Iterable imagesList() {
    return _cardsImages.where((element) => element.contains(pathName[_selectedType]));
  }
}
