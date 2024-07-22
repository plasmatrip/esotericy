import 'package:esotericy/app/app.dart';
import 'package:esotericy/app/data/news_data.dart';
import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/models/news.dart';
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

  await Hive.openBox<Settings>(Boxes.settings);
  await Hive.openBox<News>(Boxes.news);

  if (Hive.box<News>(Boxes.news).isEmpty) {
    await NewsData.addData();
  }

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => initializeDateFormatting('ru', null).then(
      (_) => runApp(
        const App(),
      ),
    ),
  );
}
