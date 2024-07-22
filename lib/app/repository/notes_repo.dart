import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/models/notes.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class NotesRepo with ChangeNotifier {
  Box repo = Hive.box<Notes>(Boxes.notes);

  Notes _note = Notes(name: '', tag: '', cards: [], comment: '');

  bool editMode = false;
  int editKey = 0;

  DateTime? get date => _note.date;
  set start(DateTime? volume) {
    _note.date = volume;
    notifyListeners();
  }

  String get name => _note.name;
  set name(String value) {
    _note.name = value;
    notifyListeners();
  }

  String get tag => _note.tag;
  set tag(String value) {
    _note.tag = value;
    notifyListeners();
  }

  String get comment => _note.comment;
  set comment(String value) {
    _note.comment = value;
    notifyListeners();
  }

  void addCard(String value) {
    for (String card in _note.cards) {
      if (card == value) {
        return;
      }
    }
    _note.cards.add(value);
    notifyListeners();
  }

  void deleteCard(String value) {
    for (String card in _note.cards) {
      if (card == value) {
        _note.cards.remove(value);
      }
    }
    _note.cards.add(value);
    notifyListeners();
  }

  void clear() {
    _note = Notes(name: '', tag: '', cards: [], comment: '');
    editKey = 0;
    editMode = false;
  }

  Future<void> save() async {
    // if (_note.cards.isNotEmpty) {
    //   if (_note.cards.last.isEmpty) {
    //     _note.cards.removeLast();
    //   }
    // }
    if (editMode) {
      Notes note = repo.get(editKey);
      note.copyWith(_note);
      note.save();
    } else {
      repo.add(_note);
    }
    clear();
    notifyListeners();
  }

  Future<void> delete(int key) async {
    Notes note = repo.get(key);
    note.delete();
    notifyListeners();
  }

  void edit(int key) {
    _note.copyWith(repo.get(key));
    editMode = true;
    editKey = key;
  }

  bool canSave() {
    return _note.isNotEmpty();
  }
}
