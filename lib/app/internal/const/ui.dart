import 'package:esotericy/app/internal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension UI on BuildContext {
  TextStyle get s36w800 => TextStyle(fontSize: 36.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w800);
  TextStyle get s24w500 => TextStyle(fontSize: 24.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s22w500 => TextStyle(fontSize: 22.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s21w700 => TextStyle(fontSize: 21.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w700);
  TextStyle get s19w500 => TextStyle(fontSize: 19.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s17w500 => TextStyle(fontSize: 17.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s17w400 => TextStyle(fontSize: 17.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w400);
  TextStyle get s16w500 => TextStyle(fontSize: 16.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s15w500 => TextStyle(fontSize: 15.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s15w400 => TextStyle(fontSize: 15.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w400);
  TextStyle get s14w700 => TextStyle(fontSize: 14.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w700);
  TextStyle get s14w500 => TextStyle(fontSize: 14.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s14w400 => TextStyle(fontSize: 14.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w400);
  TextStyle get s12w500 => TextStyle(fontSize: 12.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s12w400 => TextStyle(fontSize: 12.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w400);
  TextStyle get s12w300 => TextStyle(fontSize: 12.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w300);
  TextStyle get s11w500 => TextStyle(fontSize: 11.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w500);
  TextStyle get s11w400 => TextStyle(fontSize: 11.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w400);
  TextStyle get s8w400 => TextStyle(fontSize: 8.h, fontFamily: 'Neue Machina', fontWeight: FontWeight.w400);

  ButtonStyle get extraBtn => FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        backgroundColor: colors_2,
        foregroundColor: colors_3,
        disabledBackgroundColor: colors_5,
        disabledForegroundColor: colors_4,
        minimumSize: Size(343.w, 46.h),
        maximumSize: Size(343.w, 46.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
        textStyle: s15w500.copyWith(letterSpacing: -1.w),
      );
}
