import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 50.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'assets/images/ob1.png',
            height: 435.h,
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
              Text('Дневник практик', style: context.s24w500.copyWith(color: colors_3)),
              Text('Все ваши записи дневника с основными данными. Записывайте ваши мысли и наблюдения.',
                  style: context.s14w400.copyWith(color: grey, letterSpacing: -0.5.w)),
              LinearProgressIndicator(
                value: 0.33,
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
