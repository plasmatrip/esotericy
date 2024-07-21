import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class NewsView extends StatelessWidget {
  const NewsView({super.key});

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
                child: Text('Новости', style: context.s36w800.copyWith(color: colors_3, letterSpacing: -2.w)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
