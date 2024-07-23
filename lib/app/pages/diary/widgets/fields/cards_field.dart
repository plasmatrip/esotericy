import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/pages/diary/widgets/cards_list_view.dart';
import 'package:esotericy/app/repository/cards_repo.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CardsField extends StatelessWidget {
  const CardsField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlurContainer(
          width: 343.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Карты', style: context.s12w500.copyWith(color: colors_2)),
              SizedBox(height: 8.h),
              if (context.watch<NotesRepo>().cardsCount > 0) ...[
                Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 10.w,
                    runSpacing: 10.h,
                    children: [
                      for (int i = 0; i < context.read<NotesRepo>().cardsCount; i++) ...[
                        if (context.read<NotesRepo>().getCard(i) != null) ...[
                          GestureDetector(
                            onTap: () => context.read<NotesRepo>().deleteCard(i),
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(context.read<NotesRepo>().getCard(i)!, width: 85.w, height: 142.h),
                                Positioned(
                                  top: 2.h,
                                  right: 2.w,
                                  child: Icon(Icons.cancel_outlined, color: colors_5, size: 24.h),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
              ],
              Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8.w,
                  runSpacing: 8.h,
                  children: [
                    for (int i = 0; i < typesOfCards.length; i++) ...[
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () async {
                          var image = await cardsListView(context, i);
                          if (image != null && context.mounted) {
                            context.read<NotesRepo>().addCard(image);
                          }
                        },
                        child: Container(
                          width: 96.w,
                          height: 26.h,
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          decoration: ShapeDecoration(
                            color: colors_1,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(width: 0.5.h, color: stroke),
                              borderRadius: BorderRadius.circular(8.h),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              typesOfCards[i],
                              style: context.s14w500.copyWith(color: colors_4, height: 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.w),
      ],
    );
  }
}
