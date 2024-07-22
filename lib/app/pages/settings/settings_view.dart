import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/utils.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:in_app_review/in_app_review.dart';

@RoutePage()
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          'assets/images/bg2.png',
          width: 375.w,
          height: 812.h,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Настройки', style: context.s36w800.copyWith(color: colors_3, letterSpacing: -2.w)),
              ),
              SizedBox(height: 24.h),
              GestureDetector(
                onTap: () async => openUrl(Hive.box<Settings>(Boxes.settings).getAt(0)!.privacyPolicyUri),
                child: BlurContainer(
                  width: 343.w,
                  height: 52.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Политика конфиденциальности', style: context.s17w500.copyWith(color: colors_3, letterSpacing: -1.w)),
                      SvgPicture.asset('assets/icons/Round Alt Arrow Right.svg', width: 24.h, height: 24.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              GestureDetector(
                onTap: () async => openUrl(Hive.box<Settings>(Boxes.settings).getAt(0)!.termsOfUseUri),
                child: BlurContainer(
                  width: 343.w,
                  height: 52.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Пользовательское соглашение', style: context.s17w500.copyWith(color: colors_3, letterSpacing: -1.w)),
                      SvgPicture.asset('assets/icons/Round Alt Arrow Right.svg', width: 24.h, height: 24.h),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              GestureDetector(
                onTap: () async {
                  final InAppReview inAppReview = InAppReview.instance;
                  if (await inAppReview.isAvailable()) {
                    await inAppReview.requestReview();
                  }
                },
                child: BlurContainer(
                  width: 343.w,
                  height: 52.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Оценить приложение', style: context.s17w500.copyWith(color: colors_3, letterSpacing: -1.w)),
                      SvgPicture.asset('assets/icons/Round Alt Arrow Right.svg', width: 24.h, height: 24.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
