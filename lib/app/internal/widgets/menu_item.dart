import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    required this.index,
    required this.text,
    super.key,
  });

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115.w,
      height: 36.h,
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
      decoration: ShapeDecoration(
        color: colors_2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/off$index.svg',
              width: 24.w,
              height: 24.h,
              fit: BoxFit.cover,
              colorFilter: const ColorFilter.mode(colors_3, BlendMode.srcIn),
            ),
            SizedBox(width: 8.w),
            Text(
              text,
              style: context.s11w500.copyWith(color: colors_3, letterSpacing: -0.5.w),
            )
          ],
        ),
      ),
    );
  }
}
