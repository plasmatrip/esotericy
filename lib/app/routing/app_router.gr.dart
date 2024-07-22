// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:esotericy/app/models/news.dart' as _i12;
import 'package:esotericy/app/pages/cards/cards_list_view.dart' as _i1;
import 'package:esotericy/app/pages/cards/cards_view.dart' as _i2;
import 'package:esotericy/app/pages/diary/diary_view.dart' as _i3;
import 'package:esotericy/app/pages/fortune_telling/fortune_telling_view.dart'
    as _i4;
import 'package:esotericy/app/pages/main/main_view.dart' as _i5;
import 'package:esotericy/app/pages/news/news_view.dart' as _i6;
import 'package:esotericy/app/pages/news/selected_news_view.dart' as _i8;
import 'package:esotericy/app/pages/onboarding/onboarding_view.dart' as _i7;
import 'package:esotericy/app/pages/settings/settings_view.dart' as _i9;
import 'package:esotericy/app/pages/spalsh/splash_view.dart' as _i10;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CardsListView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CardsListView(),
      );
    },
    CardsView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CardsView(),
      );
    },
    DiaryView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DiaryView(),
      );
    },
    FortuneTellingView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FortuneTellingView(),
      );
    },
    MainView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MainView(),
      );
    },
    NewsView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OnBoardingView(),
      );
    },
    SelectedNewsView.name: (routeData) {
      final args = routeData.argsAs<SelectedNewsViewArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.SelectedNewsView(
          article: args.article,
          key: args.key,
        ),
      );
    },
    SettingsView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CardsListView]
class CardsListView extends _i11.PageRouteInfo<void> {
  const CardsListView({List<_i11.PageRouteInfo>? children})
      : super(
          CardsListView.name,
          initialChildren: children,
        );

  static const String name = 'CardsListView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CardsView]
class CardsView extends _i11.PageRouteInfo<void> {
  const CardsView({List<_i11.PageRouteInfo>? children})
      : super(
          CardsView.name,
          initialChildren: children,
        );

  static const String name = 'CardsView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DiaryView]
class DiaryView extends _i11.PageRouteInfo<void> {
  const DiaryView({List<_i11.PageRouteInfo>? children})
      : super(
          DiaryView.name,
          initialChildren: children,
        );

  static const String name = 'DiaryView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FortuneTellingView]
class FortuneTellingView extends _i11.PageRouteInfo<void> {
  const FortuneTellingView({List<_i11.PageRouteInfo>? children})
      : super(
          FortuneTellingView.name,
          initialChildren: children,
        );

  static const String name = 'FortuneTellingView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MainView]
class MainView extends _i11.PageRouteInfo<void> {
  const MainView({List<_i11.PageRouteInfo>? children})
      : super(
          MainView.name,
          initialChildren: children,
        );

  static const String name = 'MainView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NewsView]
class NewsView extends _i11.PageRouteInfo<void> {
  const NewsView({List<_i11.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OnBoardingView]
class OnBoardingView extends _i11.PageRouteInfo<void> {
  const OnBoardingView({List<_i11.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SelectedNewsView]
class SelectedNewsView extends _i11.PageRouteInfo<SelectedNewsViewArgs> {
  SelectedNewsView({
    required _i12.News article,
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SelectedNewsView.name,
          args: SelectedNewsViewArgs(
            article: article,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNewsView';

  static const _i11.PageInfo<SelectedNewsViewArgs> page =
      _i11.PageInfo<SelectedNewsViewArgs>(name);
}

class SelectedNewsViewArgs {
  const SelectedNewsViewArgs({
    required this.article,
    this.key,
  });

  final _i12.News article;

  final _i13.Key? key;

  @override
  String toString() {
    return 'SelectedNewsViewArgs{article: $article, key: $key}';
  }
}

/// generated route for
/// [_i9.SettingsView]
class SettingsView extends _i11.PageRouteInfo<void> {
  const SettingsView({List<_i11.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SplashView]
class SplashView extends _i11.PageRouteInfo<void> {
  const SplashView({List<_i11.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
