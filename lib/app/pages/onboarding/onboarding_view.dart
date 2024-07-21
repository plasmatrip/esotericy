import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/utils.dart';
import 'package:esotericy/app/models/settings.dart';
import 'package:esotericy/app/pages/onboarding/widgets/page1.dart';
import 'package:esotericy/app/pages/onboarding/widgets/page2.dart';
import 'package:esotericy/app/pages/onboarding/widgets/page3.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';

@RoutePage()
class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  bool start = false;

  void listener() {
    switch (controller.position.userScrollDirection) {
      case ScrollDirection.reverse:
        if ((controller.page ?? 0) > 1) {
          setState(
            () {
              start = true;
            },
          );
        }
      case ScrollDirection.forward:
        if ((controller.page ?? 0) < 2) {
          setState(
            () {
              start = false;
            },
          );
        }
      case ScrollDirection.idle:
        if ((controller.page ?? 0) > 1) {
          setState(
            () {
              start = true;
            },
          );
        }
    }
  }

  @override
  void initState() {
    controller.addListener(listener);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(listener);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg.png',
          width: 375.w,
          height: 812.h,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Expanded(
              child: PageView(
                controller: controller,
                children: const [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ),
            ),
            SizedBox(height: 24.h),
            if (start) ...[
              FilledButton(
                onPressed: () async {
                  Settings settings = Hive.box<Settings>(Boxes.settings).getAt(0)!;
                  settings.showOnboarding = false;
                  settings.save();
                  AutoRouter.of(context).replace(const MainView());
                },
                style: context.extraBtn,
                child: const Text('Начать'),
              ),
            ] else ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton(
                    onPressed: () async => AutoRouter.of(context).replace(const MainView()),
                    style: context.extraBtn.copyWith(
                      minimumSize: WidgetStatePropertyAll(Size(164.w, 46.h)),
                      maximumSize: WidgetStatePropertyAll(Size(164.w, 46.h)),
                      backgroundColor: const WidgetStatePropertyAll(colors_3),
                      foregroundColor: const WidgetStatePropertyAll(colors_2),
                    ),
                    child: const Text('Пропустить'),
                  ),
                  SizedBox(width: 21.w),
                  FilledButton(
                    onPressed: () async {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: context.extraBtn.copyWith(
                      minimumSize: WidgetStatePropertyAll(Size(164.w, 46.h)),
                      maximumSize: WidgetStatePropertyAll(Size(164.w, 46.h)),
                    ),
                    child: const Text('Далее'),
                  ),
                ],
              )
            ],
            SizedBox(height: 14.h),
            DefaultTextStyle(
              style: context.s8w400.copyWith(color: colors_3),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 155.w,
                      child: GestureDetector(
                        onTap: () async => openUrl(Hive.box<Settings>(Boxes.settings).getAt(0)!.termsOfUseUri),
                        child: Text('Условия использования', textAlign: TextAlign.right, style: context.s8w400.copyWith(color: colors_3)),
                      ),
                    ),
                    VerticalDivider(color: colors_2, thickness: 0.3.h, width: 12.h),
                    SizedBox(
                      width: 155.w,
                      child: GestureDetector(
                        onTap: () async => openUrl(Hive.box<Settings>(Boxes.settings).getAt(0)!.privacyPolicyUri),
                        child: Text('Политика конфиденциальности', textAlign: TextAlign.left, style: context.s8w400.copyWith(color: colors_3)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 44.h),
          ],
        ),
      ],
    );
  }
}
