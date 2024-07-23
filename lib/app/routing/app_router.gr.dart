// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:esotericy/app/models/cards.dart' as _i21;
import 'package:esotericy/app/models/ft.dart' as _i24;
import 'package:esotericy/app/models/ft_group.dart' as _i23;
import 'package:esotericy/app/models/layout.dart' as _i25;
import 'package:esotericy/app/models/news.dart' as _i26;
import 'package:esotericy/app/pages/cards/add_layout_view.dart' as _i2;
import 'package:esotericy/app/pages/cards/cards_list_view.dart' as _i4;
import 'package:esotericy/app/pages/cards/cards_view.dart' as _i5;
import 'package:esotericy/app/pages/cards/selected_card_view.dart' as _i12;
import 'package:esotericy/app/pages/cards/selected_layout_view.dart' as _i15;
import 'package:esotericy/app/pages/diary/add_note_view.dart' as _i3;
import 'package:esotericy/app/pages/diary/diary_view.dart' as _i6;
import 'package:esotericy/app/pages/diary/selected_note_view.dart' as _i17;
import 'package:esotericy/app/pages/fortune_telling/add_ft_view.dart' as _i1;
import 'package:esotericy/app/pages/fortune_telling/fortune_telling_froup_view.dart'
    as _i7;
import 'package:esotericy/app/pages/fortune_telling/fortune_telling_view.dart'
    as _i8;
import 'package:esotericy/app/pages/fortune_telling/selected_ft_view.dart'
    as _i14;
import 'package:esotericy/app/pages/fortune_telling/selected_ftgroup_view.dart'
    as _i13;
import 'package:esotericy/app/pages/main/main_view.dart' as _i9;
import 'package:esotericy/app/pages/news/news_view.dart' as _i10;
import 'package:esotericy/app/pages/news/selected_news_view.dart' as _i16;
import 'package:esotericy/app/pages/onboarding/onboarding_view.dart' as _i11;
import 'package:esotericy/app/pages/settings/settings_view.dart' as _i18;
import 'package:esotericy/app/pages/spalsh/splash_view.dart' as _i19;
import 'package:flutter/material.dart' as _i22;

abstract class $AppRouter extends _i20.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    AddFTView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddFTView(),
      );
    },
    AddLayoutView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddLayoutView(),
      );
    },
    AddNoteView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AddNoteView(),
      );
    },
    CardsListView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CardsListView(),
      );
    },
    CardsView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CardsView(),
      );
    },
    DiaryView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DiaryView(),
      );
    },
    FortuneTellingGroupView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.FortuneTellingGroupView(),
      );
    },
    FortuneTellingView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.FortuneTellingView(),
      );
    },
    MainView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MainView(),
      );
    },
    NewsView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.OnBoardingView(),
      );
    },
    SelectedCardView.name: (routeData) {
      final args = routeData.argsAs<SelectedCardViewArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SelectedCardView(
          card: args.card,
          key: args.key,
        ),
      );
    },
    SelectedFDGroupView.name: (routeData) {
      final args = routeData.argsAs<SelectedFDGroupViewArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.SelectedFDGroupView(
          ftGroup: args.ftGroup,
          key: args.key,
        ),
      );
    },
    SelectedFTView.name: (routeData) {
      final args = routeData.argsAs<SelectedFTViewArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.SelectedFTView(
          ft: args.ft,
          key: args.key,
        ),
      );
    },
    SelectedLayoutView.name: (routeData) {
      final args = routeData.argsAs<SelectedLayoutViewArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.SelectedLayoutView(
          layout: args.layout,
          key: args.key,
        ),
      );
    },
    SelectedNewsView.name: (routeData) {
      final args = routeData.argsAs<SelectedNewsViewArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.SelectedNewsView(
          article: args.article,
          key: args.key,
        ),
      );
    },
    SelectedNoteView.name: (routeData) {
      final args = routeData.argsAs<SelectedNoteViewArgs>();
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.SelectedNoteView(
          noteKey: args.noteKey,
          key: args.key,
        ),
      );
    },
    SettingsView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i20.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddFTView]
class AddFTView extends _i20.PageRouteInfo<void> {
  const AddFTView({List<_i20.PageRouteInfo>? children})
      : super(
          AddFTView.name,
          initialChildren: children,
        );

  static const String name = 'AddFTView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddLayoutView]
class AddLayoutView extends _i20.PageRouteInfo<void> {
  const AddLayoutView({List<_i20.PageRouteInfo>? children})
      : super(
          AddLayoutView.name,
          initialChildren: children,
        );

  static const String name = 'AddLayoutView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AddNoteView]
class AddNoteView extends _i20.PageRouteInfo<void> {
  const AddNoteView({List<_i20.PageRouteInfo>? children})
      : super(
          AddNoteView.name,
          initialChildren: children,
        );

  static const String name = 'AddNoteView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CardsListView]
class CardsListView extends _i20.PageRouteInfo<void> {
  const CardsListView({List<_i20.PageRouteInfo>? children})
      : super(
          CardsListView.name,
          initialChildren: children,
        );

  static const String name = 'CardsListView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CardsView]
class CardsView extends _i20.PageRouteInfo<void> {
  const CardsView({List<_i20.PageRouteInfo>? children})
      : super(
          CardsView.name,
          initialChildren: children,
        );

  static const String name = 'CardsView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DiaryView]
class DiaryView extends _i20.PageRouteInfo<void> {
  const DiaryView({List<_i20.PageRouteInfo>? children})
      : super(
          DiaryView.name,
          initialChildren: children,
        );

  static const String name = 'DiaryView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i7.FortuneTellingGroupView]
class FortuneTellingGroupView extends _i20.PageRouteInfo<void> {
  const FortuneTellingGroupView({List<_i20.PageRouteInfo>? children})
      : super(
          FortuneTellingGroupView.name,
          initialChildren: children,
        );

  static const String name = 'FortuneTellingGroupView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i8.FortuneTellingView]
class FortuneTellingView extends _i20.PageRouteInfo<void> {
  const FortuneTellingView({List<_i20.PageRouteInfo>? children})
      : super(
          FortuneTellingView.name,
          initialChildren: children,
        );

  static const String name = 'FortuneTellingView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MainView]
class MainView extends _i20.PageRouteInfo<void> {
  const MainView({List<_i20.PageRouteInfo>? children})
      : super(
          MainView.name,
          initialChildren: children,
        );

  static const String name = 'MainView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i10.NewsView]
class NewsView extends _i20.PageRouteInfo<void> {
  const NewsView({List<_i20.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i11.OnBoardingView]
class OnBoardingView extends _i20.PageRouteInfo<void> {
  const OnBoardingView({List<_i20.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SelectedCardView]
class SelectedCardView extends _i20.PageRouteInfo<SelectedCardViewArgs> {
  SelectedCardView({
    required _i21.Cards card,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectedCardView.name,
          args: SelectedCardViewArgs(
            card: card,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedCardView';

  static const _i20.PageInfo<SelectedCardViewArgs> page =
      _i20.PageInfo<SelectedCardViewArgs>(name);
}

class SelectedCardViewArgs {
  const SelectedCardViewArgs({
    required this.card,
    this.key,
  });

  final _i21.Cards card;

  final _i22.Key? key;

  @override
  String toString() {
    return 'SelectedCardViewArgs{card: $card, key: $key}';
  }
}

/// generated route for
/// [_i13.SelectedFDGroupView]
class SelectedFDGroupView extends _i20.PageRouteInfo<SelectedFDGroupViewArgs> {
  SelectedFDGroupView({
    required _i23.FTGroup ftGroup,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectedFDGroupView.name,
          args: SelectedFDGroupViewArgs(
            ftGroup: ftGroup,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedFDGroupView';

  static const _i20.PageInfo<SelectedFDGroupViewArgs> page =
      _i20.PageInfo<SelectedFDGroupViewArgs>(name);
}

class SelectedFDGroupViewArgs {
  const SelectedFDGroupViewArgs({
    required this.ftGroup,
    this.key,
  });

  final _i23.FTGroup ftGroup;

  final _i22.Key? key;

  @override
  String toString() {
    return 'SelectedFDGroupViewArgs{ftGroup: $ftGroup, key: $key}';
  }
}

/// generated route for
/// [_i14.SelectedFTView]
class SelectedFTView extends _i20.PageRouteInfo<SelectedFTViewArgs> {
  SelectedFTView({
    required _i24.FT ft,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectedFTView.name,
          args: SelectedFTViewArgs(
            ft: ft,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedFTView';

  static const _i20.PageInfo<SelectedFTViewArgs> page =
      _i20.PageInfo<SelectedFTViewArgs>(name);
}

class SelectedFTViewArgs {
  const SelectedFTViewArgs({
    required this.ft,
    this.key,
  });

  final _i24.FT ft;

  final _i22.Key? key;

  @override
  String toString() {
    return 'SelectedFTViewArgs{ft: $ft, key: $key}';
  }
}

/// generated route for
/// [_i15.SelectedLayoutView]
class SelectedLayoutView extends _i20.PageRouteInfo<SelectedLayoutViewArgs> {
  SelectedLayoutView({
    required _i25.Layout layout,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectedLayoutView.name,
          args: SelectedLayoutViewArgs(
            layout: layout,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedLayoutView';

  static const _i20.PageInfo<SelectedLayoutViewArgs> page =
      _i20.PageInfo<SelectedLayoutViewArgs>(name);
}

class SelectedLayoutViewArgs {
  const SelectedLayoutViewArgs({
    required this.layout,
    this.key,
  });

  final _i25.Layout layout;

  final _i22.Key? key;

  @override
  String toString() {
    return 'SelectedLayoutViewArgs{layout: $layout, key: $key}';
  }
}

/// generated route for
/// [_i16.SelectedNewsView]
class SelectedNewsView extends _i20.PageRouteInfo<SelectedNewsViewArgs> {
  SelectedNewsView({
    required _i26.News article,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectedNewsView.name,
          args: SelectedNewsViewArgs(
            article: article,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNewsView';

  static const _i20.PageInfo<SelectedNewsViewArgs> page =
      _i20.PageInfo<SelectedNewsViewArgs>(name);
}

class SelectedNewsViewArgs {
  const SelectedNewsViewArgs({
    required this.article,
    this.key,
  });

  final _i26.News article;

  final _i22.Key? key;

  @override
  String toString() {
    return 'SelectedNewsViewArgs{article: $article, key: $key}';
  }
}

/// generated route for
/// [_i17.SelectedNoteView]
class SelectedNoteView extends _i20.PageRouteInfo<SelectedNoteViewArgs> {
  SelectedNoteView({
    required int noteKey,
    _i22.Key? key,
    List<_i20.PageRouteInfo>? children,
  }) : super(
          SelectedNoteView.name,
          args: SelectedNoteViewArgs(
            noteKey: noteKey,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SelectedNoteView';

  static const _i20.PageInfo<SelectedNoteViewArgs> page =
      _i20.PageInfo<SelectedNoteViewArgs>(name);
}

class SelectedNoteViewArgs {
  const SelectedNoteViewArgs({
    required this.noteKey,
    this.key,
  });

  final int noteKey;

  final _i22.Key? key;

  @override
  String toString() {
    return 'SelectedNoteViewArgs{noteKey: $noteKey, key: $key}';
  }
}

/// generated route for
/// [_i18.SettingsView]
class SettingsView extends _i20.PageRouteInfo<void> {
  const SettingsView({List<_i20.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}

/// generated route for
/// [_i19.SplashView]
class SplashView extends _i20.PageRouteInfo<void> {
  const SplashView({List<_i20.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i20.PageInfo<void> page = _i20.PageInfo<void>(name);
}
