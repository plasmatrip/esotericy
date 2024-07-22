import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/repository/cards_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class TypesOfcardsList extends StatelessWidget {
  const TypesOfcardsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 24.h),
      child: SizedBox(
        height: 26.h,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          scrollDirection: Axis.horizontal,
          itemCount: typesOfCards.length,
          separatorBuilder: (context, index) => SizedBox(width: 8.w),
          itemBuilder: (context, index) {
            int selectedType = context.watch<CardsRepo>().selectedType;
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => context.read<CardsRepo>().selectedType = index,
              child: Container(
                // width: 82.w,
                height: 26.h,
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                decoration: ShapeDecoration(
                  color: selectedType == index ? colors_2 : colors_1,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.5.h, color: selectedType == index ? colors_3 : stroke),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    typesOfCards[index],
                    style: context.s14w500.copyWith(color: selectedType == index ? colors_3 : colors_4),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
