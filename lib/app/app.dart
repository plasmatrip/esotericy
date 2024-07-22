import 'package:device_preview/device_preview.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/repository/cards_repo.dart';
import 'package:esotericy/app/repository/habit_repo.dart';
import 'package:esotericy/app/routing/app_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final appRouter = AppRouter();

  @override
  void dispose() async {
    await Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HabitRepo()),
          ChangeNotifierProvider(create: (context) => CardsRepo()),
        ],
        builder: (context, child) {
          return DevicePreview(
              enabled: !kReleaseMode,
              builder: (context) {
                return ScreenUtilInit(
                  designSize: const Size(375, 812),
                  builder: (context, child) {
                    return MaterialApp.router(
                      debugShowCheckedModeBanner: false,
                      title: 'Esotericy',
                      localizationsDelegates: const [
                        GlobalMaterialLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate
                      ],
                      supportedLocales: const [Locale('ru', 'RU')],
                      theme: ThemeData(
                        scaffoldBackgroundColor: Colors.transparent,
                        appBarTheme: AppBarTheme(
                          backgroundColor: shapeMono,
                          centerTitle: false,
                          titleTextStyle: context.s17w500.copyWith(color: colors_3),
                        ),
                        useMaterial3: true,
                      ),
                      routerConfig: appRouter.config(),
                    );
                  },
                );
              });
        });
  }
}
