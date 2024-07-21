import 'package:flutter/material.dart';

class HabitRepo with ChangeNotifier {
  // Box repo = Hive.box<Habit>(Boxes.habit);

  // Habit _habit = Habit(
  //     name: '', duration: '', days: {1: false, 2: false, 3: false, 4: false, 5: false, 6: false, 7: false}, note: '', goals: [''], icon: '', complete: []);

  // DateTime _selectedDate = DateTime.now();
  // DateTime _selectedMP = DateTime.now();
  // DateTime _selectedAP = DateTime.now();

  // Days _selectedDay = Days.today;

  // Days get selectedDay => _selectedDay;
  // set selectedDay(Days value) {
  //   _selectedDay = value;
  //   notifyListeners();
  // }

  // DateTime get selectedDate => _selectedDate;
  // set selectedDate(DateTime value) {
  //   _selectedDate = value;
  //   notifyListeners();
  // }

  // DateTime get selectedMP => _selectedMP;
  // set selectedMP(DateTime value) {
  //   _selectedMP = value;
  //   notifyListeners();
  // }

  // DateTime get selectedAP => _selectedAP;
  // set selectedAP(DateTime value) {
  //   _selectedAP = value;
  //   notifyListeners();
  // }

  // bool editMode = false;
  // int editKey = 0;

  // String getDuration(int index) {
  //   return darations[index];
  // }

  // DateTime? get start => _habit.start;
  // set start(DateTime? volume) {
  //   _habit.start = volume;
  //   notifyListeners();
  // }

  // DateTime? get time => _habit.time;
  // set time(DateTime? volume) {
  //   _habit.time = volume;
  //   notifyListeners();
  // }

  // String get name => _habit.name;
  // set name(String value) {
  //   _habit.name = value;
  //   notifyListeners();
  // }

  // String get duration => _habit.duration;
  // set duration(String value) {
  //   _habit.duration = value;
  //   notifyListeners();
  // }

  // String get note => _habit.note;
  // set note(String value) {
  //   _habit.note = value;
  //   notifyListeners();
  // }

  // bool getDay(int day) {
  //   return _habit.days[day]!;
  // }

  // void setDay(int day) {
  //   _habit.days[day] = !_habit.days[day]!;
  //   notifyListeners();
  // }

  // void addGoal() {
  //   if (_habit.goals.last.isNotEmpty) {
  //     _habit.goals.add('');
  //     notifyListeners();
  //   }
  // }

  // void setGoal(int index, String goal) {
  //   if (goal.isEmpty && _habit.goals.length != 1 && index != _habit.goals.length - 1) {
  //     _habit.goals.removeAt(index);
  //   } else {
  //     _habit.goals[index] = goal;
  //   }
  //   notifyListeners();
  // }

  // String getGoal(int index) {
  //   return _habit.goals[index];
  // }

  // List<String> get goals => _habit.goals;

  // void clear() {
  //   _habit = Habit(
  //       name: '', duration: '', days: {1: false, 2: false, 3: false, 4: false, 5: false, 6: false, 7: false}, note: '', goals: [''], icon: '', complete: []);
  //   editKey = 0;
  //   editMode = false;
  // }

  // Future<void> save() async {
  //   if (_habit.goals.isNotEmpty) {
  //     if (_habit.goals.last.isEmpty) {
  //       _habit.goals.removeLast();
  //     }
  //   }
  //   if (editMode) {
  //     Habit habit = repo.get(editKey);
  //     habit.copyWith(_habit);
  //     habit.save();
  //   } else {
  //     _habit.icon = icons[Random().nextInt(4)];
  //     repo.add(_habit);
  //   }
  //   clear();
  //   notifyListeners();
  // }

  // Future<void> delete(int key) async {
  //   Habit habit = repo.get(key);
  //   habit.delete();
  //   notifyListeners();
  // }

  // void edit(int key) {
  //   _habit.copyWith(repo.get(key));
  //   editMode = true;
  //   editKey = key;
  // }

  // bool canSave() {
  //   return _habit.isNotEmpty();
  // }
}
