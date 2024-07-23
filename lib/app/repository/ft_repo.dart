import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/models/ft.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class FTRepo with ChangeNotifier {
  Box repo = Hive.box<FT>(Boxes.ft);

  FT _ft = FT(name: '', description: '', stageNames: [''], stages: ['']);

  bool editMode = false;
  int editKey = 0;

  String _searchString = '';

  String get searchString => _searchString;
  set searchString(String value) {
    _searchString = value;
    notifyListeners();
  }

  String get name => _ft.name;
  set name(String value) {
    _ft.name = value;
    notifyListeners();
  }

  String get description => _ft.description;
  set description(String value) {
    _ft.description = value;
    notifyListeners();
  }

  int get stageCount => _ft.stages.length;

  void addStage() {
    if (_ft.stageNames.last.isNotEmpty && _ft.stages.last.isNotEmpty) {
      _ft.stages.add('');
      _ft.stageNames.add('');
      notifyListeners();
    }
  }

  String getStage(int i) {
    return _ft.stages[i];
  }

  void setStage(int index, String vlaue) {
    _ft.stages[index] = vlaue;
    notifyListeners();
  }

  String getStageName(int i) {
    return _ft.stageNames[i];
  }

  void setStageName(int index, String vlaue) {
    _ft.stageNames[index] = vlaue;
    notifyListeners();
  }

  void clear() {
    _ft = FT(name: '', description: '', stageNames: [''], stages: ['']);
    editKey = 0;
    editMode = false;
  }

  Future<void> save() async {
    if (_ft.stages.isEmpty) {
      for (String stage in _ft.stages) {
        if (stage.isEmpty) {
          _ft.stages.remove(stage);
        }
      }
    }
    repo.add(_ft);
    clear();
    notifyListeners();
  }

  bool canSave() {
    return _ft.isNotEmpty();
  }

  Iterable ftList() {
    return repo.values.where((element) => _searchString.isEmpty ? true : (element as FT).name.contains(_searchString));
  }
}
