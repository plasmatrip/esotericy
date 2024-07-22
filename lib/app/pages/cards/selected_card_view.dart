import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SelectedCardView extends StatelessWidget {
  const SelectedCardView({required this.card, super.key});

  final Cards card;

  @override
  Widget build(BuildContext context) {
    final RegExp tag = RegExp(r'\[(?<=\[)[0-9A-Z\s]+(?=\])\]');
    RegExpMatch? match;
    List<Widget> content = [];

    content.addAll(
      [
        Center(
          child: Image.asset(
            card.image,
            width: 203.w,
            height: 339.h,
          ),
        ),
        SizedBox(height: 14.h),
      ],
    );
    for (int i = 0; i < card.description.length; i++) {
      match = tag.firstMatch(card.description[i]);
      if (match != null) {
        content.addAll(
          [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VerticalDivider(color: colors_4, thickness: 1.w, width: 1.w),
                  SizedBox(
                    width: 307.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(card.description[i].replaceAll(tag, ''), style: context.s14w400.copyWith(color: grey)),
                        Text(card.description[i + 1].replaceAll(tag, ''), style: context.s15w400.copyWith(color: colors_3)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 14.h),
          ],
        );
        i++;
      }
    }
    return Stack(
      children: [
        Image.asset(
          'assets/images/bg2.png',
          width: 375.w,
          height: 812.h,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => AutoRouter.of(context).removeLast(),
              child: Icon(Icons.arrow_back_ios, color: colors_3, size: 24.h),
            ),
            flexibleSpace: Image.asset(
              'assets/images/ab_bg.png',
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.h, color: const Color(0x999C859E)),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8.h),
                bottomRight: Radius.circular(8.h),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 92.h),
              child: BlurContainer(
                width: 343.w,
                child: Column(
                  children: content,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
