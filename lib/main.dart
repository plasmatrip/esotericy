import 'package:esotericy/app/app.dart';
import 'package:esotericy/app/data/cards_data.dart';
import 'package:esotericy/app/data/ft_group_data.dart';
import 'package:esotericy/app/data/layout_data.dart';
import 'package:esotericy/app/data/news_data.dart';
import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/models/cards.dart';
import 'package:esotericy/app/models/ft_group.dart';
import 'package:esotericy/app/models/layout.dart';
import 'package:esotericy/app/models/news.dart';
import 'package:esotericy/app/models/notes.dart';
import 'package:esotericy/app/models/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter<Settings>(SettingsAdapter());
  Hive.registerAdapter<News>(NewsAdapter());
  Hive.registerAdapter<Cards>(CardsAdapter());
  Hive.registerAdapter<Layout>(LayoutAdapter());
  Hive.registerAdapter<Notes>(NotesAdapter());
  Hive.registerAdapter<FTGroup>(FTGroupAdapter());

  await Hive.openBox<Settings>(Boxes.settings);
  await Hive.openBox<News>(Boxes.news);
  await Hive.openBox<Cards>(Boxes.cards);
  await Hive.openBox<Layout>(Boxes.layout);
  await Hive.openBox<Notes>(Boxes.notes);
  await Hive.openBox<FTGroup>(Boxes.ftgroup);

  if (Hive.box<News>(Boxes.news).isEmpty) {
    await NewsData.addData();
  }
  if (Hive.box<Cards>(Boxes.cards).isEmpty) {
    await CardsData.addData();
  }
  if (Hive.box<Layout>(Boxes.layout).isEmpty) {
    await LayoutData.addData();
  }
  if (Hive.box<FTGroup>(Boxes.ftgroup).isEmpty) {
    await FTGroupData.addData();
  }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => initializeDateFormatting('ru', null).then(
      (_) => runApp(
        const App(),
      ),
    ),
  );
}
