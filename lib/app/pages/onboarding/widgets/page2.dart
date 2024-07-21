import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page2 extends StatelessWidget {
  const Page2({
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
            'assets/images/ob2.png',
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
              Text('Карты Таро', style: context.s24w500.copyWith(color: colors_3)),
              Text('Различные расклады карт Таро, с возможностью просмотра деталий гадания и значений всех карт.',
                  style: context.s14w400.copyWith(color: grey, letterSpacing: -0.5.w)),
              LinearProgressIndicator(
                value: 0.66,
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
