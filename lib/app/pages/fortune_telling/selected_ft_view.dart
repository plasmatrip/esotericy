import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/ft.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SelectedFTView extends StatelessWidget {
  const SelectedFTView({required this.ft, super.key});

  final FT ft;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg2.png',
          width: 375.w,
          height: 812.h,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => AutoRouter.of(context).removeLast(),
              child: Icon(Icons.arrow_back_ios, color: colors_3, size: 24.h),
            ),
            flexibleSpace: Image.asset(
              'assets/images/ab_bg.png',
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.h, color: const Color(0x999C859E)),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.h),
                bottomRight: Radius.circular(8.h),
              ),
            ),
          ),
          body: ListView(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 92.h),
            children: [
              BlurContainer(
                child: Text(
                  ft.description,
                  style: context.s14w400.copyWith(color: colors_3),
                ),
              ),
              SizedBox(height: 8.h),
              for (int i = 0; i < ft.stageNames.length; i++) ...[
                BlurContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(ft.stageNames[i], style: context.s14w700.copyWith(color: colors_2)),
                      SizedBox(height: 6.h),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('\u2022  ', style: context.s14w400.copyWith(color: colors_3)),
                          Expanded(
                            child: Column(
                              children: [
                                Text(ft.stages[i], style: context.s14w400.copyWith(color: colors_3)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
