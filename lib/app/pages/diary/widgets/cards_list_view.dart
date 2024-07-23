import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/models/cards.dart';
import 'package:esotericy/app/repository/cards_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

Future<String?> cardsListView(BuildContext context, int typeOfCards) {
  Iterable imagesList = context.read<CardsRepo>().imagesList(typeOfCards: typeOfCards);
  return showDialog<String?>(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
            backgroundColor: shapeMono,
            surfaceTintColor: shapeMono,
            insetPadding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.w),
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            clipBehavior: Clip.none,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10.w,
                  runSpacing: 10.h,
                  children: [
                    for (Cards card in imagesList) ...[
                      GestureDetector(
                        onTap: () => AutoRouter.of(context).maybePop(card.image),
                        child: Image(
                          image: AssetImage(card.image),
                          width: 60.w,
                          height: 102.h,
                          loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
                              ? child
                              : SizedBox(
                                  width: 60.w,
                                  height: 102.h,
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          );
        },
      );
    },
  );
}
