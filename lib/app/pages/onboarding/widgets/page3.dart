import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50.h),
        Align(
          alignment: Alignment.centerRight,
          child: Image.asset(
            'assets/images/ob3.png',
            height: 435.h,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(height: 15.h),
        BlurContainer(
          width: 343.w,
          height: 146.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Гадание', style: context.s24w500.copyWith(color: colors_3)),
              Text('Изучайте все возможные типы гаданий или записывайте и развивайте свои. А также получайте свежие новости на эту тему.',
                  style: context.s14w400.copyWith(color: grey, letterSpacing: -0.5.w)),
              LinearProgressIndicator(
                value: 1,
                backgroundColor: shapeMono,
                color: colors_2,
                borderRadius: BorderRadius.circular(8.h),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
