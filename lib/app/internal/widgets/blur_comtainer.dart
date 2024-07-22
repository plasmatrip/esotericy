import 'dart:ui';

import 'package:esotericy/app/internal/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlurContainer extends StatelessWidget {
  const BlurContainer({required this.child, this.height, super.key, this.width, this.padding, this.color});

  final double? width;
  final double? height;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(8.h),
      clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
          width: width,
          height: height,
          padding: padding ?? EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
          decoration: ShapeDecoration(
            color: color ?? shapeMono.withOpacity(0.4),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.5.h, color: const Color(0x999C859E)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          // color: color ?? shapeMono.withOpacity(0.4),
          child: child,
        ),
      ),
    );
  }
}
