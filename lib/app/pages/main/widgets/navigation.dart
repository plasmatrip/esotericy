import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Navigation extends StatelessWidget {
  const Navigation({
    required this.tabsRouter,
    super.key,
  });

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 76.h,
      padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w, bottom: 24.h),
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage('assets/images/nav bar.png'), fit: BoxFit.cover),
        border: Border(
          top: BorderSide(width: 0.5.h, color: colors_4),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TapRegion(
            behavior: HitTestBehavior.opaque,
            onTapInside: (event) => tabsRouter.setActiveIndex(0),
            child: tabsRouter.activeIndex == 0
                ? const MenuItem(index: 1, text: 'Дневник')
                : SvgPicture.asset('assets/icons/off1.svg', width: 24.w, height: 24.h, fit: BoxFit.cover),
          ),
          TapRegion(
            behavior: HitTestBehavior.opaque,
            onTapInside: (event) => tabsRouter.setActiveIndex(1),
            child: tabsRouter.activeIndex == 1
                ? const MenuItem(index: 2, text: 'Карты')
                : SvgPicture.asset('assets/icons/off2.svg', width: 24.w, height: 24.h, fit: BoxFit.cover),
          ),
          TapRegion(
            behavior: HitTestBehavior.opaque,
            onTapInside: (event) => tabsRouter.setActiveIndex(2),
            child: tabsRouter.activeIndex == 2
                ? const MenuItem(index: 3, text: 'Гадание')
                : SvgPicture.asset('assets/icons/off3.svg', width: 24.w, height: 24.h, fit: BoxFit.cover),
          ),
          TapRegion(
            behavior: HitTestBehavior.opaque,
            onTapInside: (event) => tabsRouter.setActiveIndex(3),
            child: tabsRouter.activeIndex == 3
                ? const MenuItem(index: 4, text: 'Новости')
                : SvgPicture.asset('assets/icons/off4.svg', width: 24.w, height: 24.h, fit: BoxFit.cover),
          ),
          TapRegion(
            behavior: HitTestBehavior.opaque,
            onTapInside: (event) => tabsRouter.setActiveIndex(4),
            child: tabsRouter.activeIndex == 4
                ? const MenuItem(index: 5, text: 'Настройки')
                : SvgPicture.asset('assets/icons/off5.svg', width: 24.w, height: 24.h, fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
