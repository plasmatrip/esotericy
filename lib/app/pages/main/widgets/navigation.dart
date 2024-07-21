import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
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
      // decoration: ShapeDecoration(
      //   image: const DecorationImage(image: AssetImage('assets/images/nav bar.png'), fit: BoxFit.cover),
      //   shape: RoundedRectangleBorder(
      //     side: BorderSide(width: 0.5.h, color: colors_4),
      //     borderRadius: BorderRadius.only(
      //       topLeft: Radius.circular(8.h),
      //       topRight: Radius.circular(8.h),
      //     ),
      //   ),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TapRegion(
            onTapInside: (event) => tabsRouter.setActiveIndex(0),
            child: tabsRouter.activeIndex == 0
                ? SvgPicture.asset('assets/icons/off1.svg', width: 24.dg, height: 24.h, fit: BoxFit.none)
                : SvgPicture.asset('assets/icons/on1.svg', width: 24.w, height: 24.h, fit: BoxFit.none),
          ),
          TapRegion(
            onTapInside: (event) => tabsRouter.setActiveIndex(1),
            child: tabsRouter.activeIndex == 1
                ? SvgPicture.asset('assets/icons/off2.svg', width: 24.w, height: 24.h, fit: BoxFit.none)
                : SvgPicture.asset('assets/icons/on2.svg', width: 24.w, height: 24.h, fit: BoxFit.none),
          ),
          TapRegion(
            onTapInside: (event) => tabsRouter.setActiveIndex(2),
            child: tabsRouter.activeIndex == 2
                ? SvgPicture.asset('assets/icons/off3.svg', width: 24.w, height: 24.h, fit: BoxFit.none)
                : SvgPicture.asset('assets/icons/on3.svg', width: 24.w, height: 24.h, fit: BoxFit.none),
          ),
          TapRegion(
            onTapInside: (event) => tabsRouter.setActiveIndex(3),
            child: tabsRouter.activeIndex == 3
                ? SvgPicture.asset('assets/icons/off4.svg', width: 24.w, height: 24.h, fit: BoxFit.none)
                : SvgPicture.asset('assets/icons/on4.svg', width: 24.w, height: 24.h, fit: BoxFit.none),
          ),
          TapRegion(
            onTapInside: (event) => tabsRouter.setActiveIndex(4),
            child: tabsRouter.activeIndex == 4
                ? SvgPicture.asset('assets/icons/off5.svg', width: 24.w, height: 24.h, fit: BoxFit.none)
                : SvgPicture.asset('assets/icons/on5.svg', width: 24.w, height: 24.h, fit: BoxFit.none),
          ),
        ],
      ),
    );
  }
}
