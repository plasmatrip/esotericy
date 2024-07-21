import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/models/settings.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        Future.delayed(const Duration(seconds: 1)).whenComplete(
          () async {
            final Directory applicationDirectory = await getApplicationDocumentsDirectory();
            Settings settings;
            if (Hive.box<Settings>(Boxes.settings).values.isEmpty) {
              settings = Settings(
                showOnboarding: true, //showOnBoarding: true - show on boarding screen, false - don't show ob boarding screen. Not used in this app.
                termsOfUseUri: 'https://flutter.dev', //termsOfUseUri
                privacyPolicyUri: 'https://flutter.dev', //privacyPolicyUri
                applicationInformationUri: 'https://flutter.dev', //applicationInformationUri
                appDir: applicationDirectory.path,
              );
              Hive.box<Settings>(Boxes.settings).add(settings);
            } else {
              settings = Hive.box<Settings>(Boxes.settings).getAt(0)!;
              settings.appDir = applicationDirectory.path;
              settings.save();
            }
            if (!mounted) {
              return;
            }
            // if (Hive.box<Settings>(Boxes.settings).getAt(0)!.showOnboarding) {
            //   AutoRouter.of(context).replace(const OnBoardingView());
            // } else {
            //   AutoRouter.of(context).replace(const MainView());
            // }
            AutoRouter.of(context).replace(const OnBoardingView());
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/bg.png',
            width: 375.w,
            height: 812.h,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/splash.png',
            width: 375.w,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
