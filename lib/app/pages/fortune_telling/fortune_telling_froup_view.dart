import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/boxes.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/ft_group.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';

@RoutePage()
class FortuneTellingGroupView extends StatelessWidget {
  const FortuneTellingGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable ftList = Hive.box<FTGroup>(Boxes.ftgroup).values;
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
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 60.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Гадание', style: context.s36w800.copyWith(color: colors_3, letterSpacing: -2.w)),
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () async => AutoRouter.of(context).push(const FortuneTellingView()),
                    child: BlurContainer(
                      width: 43,
                      height: 35,
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      child: SvgPicture.asset('assets/icons/Notebook.svg', width: 24.w, height: 24.h),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(bottom: 100.h),
                  children: [
                    Wrap(
                      spacing: 14.w,
                      runSpacing: 26.h,
                      children: [
                        for (FTGroup ftGroup in ftList) ...[
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () async => AutoRouter.of(context).push(SelectedFDGroupView(ftGroup: ftGroup)),
                            child: BlurContainer(
                              width: 164.w,
                              height: 215.h,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 136.w,
                                    child: Text(ftGroup.name, style: context.s17w500.copyWith(color: colors_3)),
                                  ),
                                  Center(
                                      child: SvgPicture.asset(
                                    ftGroup.icon,
                                    height: 125.h,
                                  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
