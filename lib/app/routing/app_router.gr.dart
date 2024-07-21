// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:esotericy/app/pages/cards/cards_view.dart' as _i1;
import 'package:esotericy/app/pages/diary/diary_view.dart' as _i2;
import 'package:esotericy/app/pages/fortune_telling/fortune_telling_view.dart'
    as _i3;
import 'package:esotericy/app/pages/main/main_view.dart' as _i4;
import 'package:esotericy/app/pages/news/news_view.dart' as _i5;
import 'package:esotericy/app/pages/onboarding/onboarding_view.dart' as _i6;
import 'package:esotericy/app/pages/settings/settings_view.dart' as _i7;
import 'package:esotericy/app/pages/spalsh/splash_view.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CardsView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CardsView(),
      );
    },
    DiaryView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.DiaryView(),
      );
    },
    FortuneTellingView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FortuneTellingView(),
      );
    },
    MainView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MainView(),
      );
    },
    NewsView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.NewsView(),
      );
    },
    OnBoardingView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OnBoardingView(),
      );
    },
    SettingsView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SettingsView(),
      );
    },
    SplashView.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.CardsView]
class CardsView extends _i9.PageRouteInfo<void> {
  const CardsView({List<_i9.PageRouteInfo>? children})
      : super(
          CardsView.name,
          initialChildren: children,
        );

  static const String name = 'CardsView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DiaryView]
class DiaryView extends _i9.PageRouteInfo<void> {
  const DiaryView({List<_i9.PageRouteInfo>? children})
      : super(
          DiaryView.name,
          initialChildren: children,
        );

  static const String name = 'DiaryView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FortuneTellingView]
class FortuneTellingView extends _i9.PageRouteInfo<void> {
  const FortuneTellingView({List<_i9.PageRouteInfo>? children})
      : super(
          FortuneTellingView.name,
          initialChildren: children,
        );

  static const String name = 'FortuneTellingView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MainView]
class MainView extends _i9.PageRouteInfo<void> {
  const MainView({List<_i9.PageRouteInfo>? children})
      : super(
          MainView.name,
          initialChildren: children,
        );

  static const String name = 'MainView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.NewsView]
class NewsView extends _i9.PageRouteInfo<void> {
  const NewsView({List<_i9.PageRouteInfo>? children})
      : super(
          NewsView.name,
          initialChildren: children,
        );

  static const String name = 'NewsView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OnBoardingView]
class OnBoardingView extends _i9.PageRouteInfo<void> {
  const OnBoardingView({List<_i9.PageRouteInfo>? children})
      : super(
          OnBoardingView.name,
          initialChildren: children,
        );

  static const String name = 'OnBoardingView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SettingsView]
class SettingsView extends _i9.PageRouteInfo<void> {
  const SettingsView({List<_i9.PageRouteInfo>? children})
      : super(
          SettingsView.name,
          initialChildren: children,
        );

  static const String name = 'SettingsView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashView]
class SplashView extends _i9.PageRouteInfo<void> {
  const SplashView({List<_i9.PageRouteInfo>? children})
      : super(
          SplashView.name,
          initialChildren: children,
        );

  static const String name = 'SplashView';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
