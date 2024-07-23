// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:esotericy/app/models/cards.dart' as _i17;
import 'package:esotericy/app/models/layout.dart' as _i19;
import 'package:esotericy/app/models/news.dart' as _i20;
import 'package:esotericy/app/pages/cards/add_layout_view.dart' as _i1;
import 'package:esotericy/app/pages/cards/cards_list_view.dart' as _i3;
import 'package:esotericy/app/pages/cards/cards_view.dart' as _i4;
import 'package:esotericy/app/pages/cards/selected_card_view.dart' as _i10;
import 'package:esotericy/app/pages/cards/selected_layout_view.dart' as _i11;
import 'package:esotericy/app/pages/diary/add_note_view.dart' as _i2;
import 'package:esotericy/app/pages/diary/diary_view.dart' as _i5;
import 'package:esotericy/app/pages/diary/selected_note_view.dart' as _i13;
import 'package:esotericy/app/pages/fortune_telling/fortune_telling_view.dart'
    as _i6;
import 'package:esotericy/app/pages/main/main_view.dart' as _i7;
import 'package:esotericy/app/pages/news/news_view.dart' as _i8;
import 'package:esotericy/app/pages/news/selected_news_view.dart' as _i12;
import 'package:esotericy/app/pages/onboarding/onboarding_view.dart' as _i9;
import 'package:esotericy/app/pages/settings/settings_view.dart' as _i14;
import 'package:esotericy/app/pages/spalsh/splash_view.dart' as _i15;
import 'package:flutter/material.dart' as _i18;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    AddLayoutView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddLayoutView(),
      );
    },
    AddNoteView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddNoteView(),
      );
    },
    CardsListView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CardsListView(),
      );
    },
    CardsView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CardsView(),
      );
    },
    DiaryView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DiaryView(),
      );
    },
    FortuneTellingView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FortuneTellingView(),
      );
    },
    MainView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MainView(),
      );
    },
    NewsView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.OnBoardingView(),
      );
    },
    SelectedCardView.name: (routeData) {
      final args = routeData.argsAs<SelectedCardViewArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.SelectedCardView(
          card: args.card,
          key: args.key,
        ),
      );
    },
    SelectedLayoutView.name: (routeData) {
      final args = routeData.argsAs<SelectedLayoutViewArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.SelectedLayoutView(
          layout: args.layout,
          key: args.key,
        ),
      );
    },
    SelectedNewsView.name: (routeData) {
      final args = routeData.argsAs<SelectedNewsViewArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SelectedNewsView(
          article: args.article,
          key: args.key,
        ),
      );
    },
    SelectedNoteView.name: (routeData) {
      final args = routeData.argsAs<SelectedNoteViewArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SelectedNoteView(
          noteKey: args.noteKey,
          key: args.key,
        ),
      );
    },
    SettingsView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddLayoutView]
class AddLayoutView extends _i16.PageRouteInfo<void> {
  const AddLayoutView({List<_i16.PageRouteInfo>? children})
      : super(
          AddLayoutView.name,
          initialChildren: children,
        );

  static const String name = 'AddLayoutView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddNoteView]
class AddNoteView extends _i16.PageRouteInfo<void> {
  const AddNoteView({List<_i16.PageRouteInfo>? children})
      : super(
          AddNoteView.name,
          initialChildren: children,
        );

  static const String name = 'AddNoteView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CardsListView]
class CardsListView extends _i16.PageRouteInfo<void> {
  const CardsListView({List<_i16.PageRouteInfo>? children})
      : super(
          CardsListView.name,
          initialChildren: children,
        );

  static const String name = 'CardsListView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CardsView]
class CardsView extends _i16.PageRouteInfo<void> {
  const CardsView({List<_i16.PageRouteInfo>? children})
      : super(
          CardsView.name,
          initialChildren: children,
        );

  static const String name = 'CardsView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DiaryView]
class DiaryView extends _i16.PageRouteInfo<void> {
  const DiaryView({List<_i16.PageRouteInfo>? children})
      : super(
          DiaryView.name,
          initialChildren: children,
        );

  static const String name = 'DiaryView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FortuneTellingView]
class FortuneTellingView extends _i16.PageRouteInfo<void> {
  const FortuneTellingView({List<_i16.PageRouteInfo>? children})
      : super(
          FortuneTellingView.name,
          initialChildren: children,
        );

  static const String name = 'FortuneTellingView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MainView]
class MainView extends _i16.PageRouteInfo<void> {
  const MainView({List<_i16.PageRouteInfo>? children})
      : super(
          MainView.name,
          initialChildren: children,
        );

  static const String name = 'MainView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NewsView]
class NewsView extends _i16.PageRouteInfo<void> {
  const NewsView({List<_i16.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.OnBoardingView]
class OnBoardingView extends _i16.PageRouteInfo<void> {
  const OnBoardingView({List<_i16.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SelectedCardView]
class SelectedCardView extends _i16.PageRouteInfo<SelectedCardViewArgs> {
  SelectedCardView({
    required _i17.Cards card,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SelectedCardView.name,
          args: SelectedCardViewArgs(
            card: card,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedCardView';

  static const _i16.PageInfo<SelectedCardViewArgs> page =
      _i16.PageInfo<SelectedCardViewArgs>(name);
}

class SelectedCardViewArgs {
  const SelectedCardViewArgs({
    required this.card,
    this.key,
  });

  final _i17.Cards card;

  final _i18.Key? key;

  @override
  String toString() {
    return 'SelectedCardViewArgs{card: $card, key: $key}';
  }
}

/// generated route for
/// [_i11.SelectedLayoutView]
class SelectedLayoutView extends _i16.PageRouteInfo<SelectedLayoutViewArgs> {
  SelectedLayoutView({
    required _i19.Layout layout,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SelectedLayoutView.name,
          args: SelectedLayoutViewArgs(
            layout: layout,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedLayoutView';

  static const _i16.PageInfo<SelectedLayoutViewArgs> page =
      _i16.PageInfo<SelectedLayoutViewArgs>(name);
}

class SelectedLayoutViewArgs {
  const SelectedLayoutViewArgs({
    required this.layout,
    this.key,
  });

  final _i19.Layout layout;

  final _i18.Key? key;

  @override
  String toString() {
    return 'SelectedLayoutViewArgs{layout: $layout, key: $key}';
  }
}

/// generated route for
/// [_i12.SelectedNewsView]
class SelectedNewsView extends _i16.PageRouteInfo<SelectedNewsViewArgs> {
  SelectedNewsView({
    required _i20.News article,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SelectedNewsView.name,
          args: SelectedNewsViewArgs(
            article: article,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNewsView';

  static const _i16.PageInfo<SelectedNewsViewArgs> page =
      _i16.PageInfo<SelectedNewsViewArgs>(name);
}

class SelectedNewsViewArgs {
  const SelectedNewsViewArgs({
    required this.article,
    this.key,
  });

  final _i20.News article;

  final _i18.Key? key;

  @override
  String toString() {
    return 'SelectedNewsViewArgs{article: $article, key: $key}';
  }
}

/// generated route for
/// [_i13.SelectedNoteView]
class SelectedNoteView extends _i16.PageRouteInfo<SelectedNoteViewArgs> {
  SelectedNoteView({
    required int noteKey,
    _i18.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          SelectedNoteView.name,
          args: SelectedNoteViewArgs(
            noteKey: noteKey,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNoteView';

  static const _i16.PageInfo<SelectedNoteViewArgs> page =
      _i16.PageInfo<SelectedNoteViewArgs>(name);
}

class SelectedNoteViewArgs {
  const SelectedNoteViewArgs({
    required this.noteKey,
    this.key,
  });

  final int noteKey;

  final _i18.Key? key;

  @override
  String toString() {
    return 'SelectedNoteViewArgs{noteKey: $noteKey, key: $key}';
  }
}

/// generated route for
/// [_i14.SettingsView]
class SettingsView extends _i16.PageRouteInfo<void> {
  const SettingsView({List<_i16.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SplashView]
class SplashView extends _i16.PageRouteInfo<void> {
  const SplashView({List<_i16.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
