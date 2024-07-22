import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardsViewButton extends StatelessWidget {
  const CardsViewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(const CardsListView()),
      child: BlurContainer(
        width: 343.w,
        height: 88.h,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset('assets/vectors/card.svg', width: 42.w, height: 60.h),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Карты Таро', style: context.s19w500.copyWith(color: colors_3)),
                  Text('Значения карт', style: context.s14w400.copyWith(color: grey)),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/Round Alt Arrow Right.svg', width: 24.h, height: 24.h),
          ],
        ),
      ),
    );
  }
}
