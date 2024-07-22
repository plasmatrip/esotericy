import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/news.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SelectedNewsView extends StatelessWidget {
  const SelectedNewsView({required this.article, super.key});

  final News article;

  @override
  Widget build(BuildContext context) {
    final RegExp tag = RegExp(r'\[(?<=\[)[0-9A-Z\s]+(?=\])\]');
    RegExpMatch? match;
    List<Widget> content = [];

    for (int i = 0; i < article.content.length; i++) {
      match = tag.firstMatch(article.content[i]);
      if (match != null) {
        switch (match[0]) {
          case '[TITLEIMAGE]':
            content.addAll([
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(article.content[i].replaceAll(tag, ''), width: 96.w, height: 161.h, fit: BoxFit.cover),
                  SizedBox(width: 14.w),
                  SizedBox(
                    width: 201.w,
                    child: Text(
                      article.title,
                      style: context.s19w500.copyWith(color: colors_3, letterSpacing: -1.w),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 14.h),
            ]);
            i++;
          case '[SUBTITLE]':
            content.addAll([
              Text(article.content[i].replaceAll(tag, ''), style: context.s16w500.copyWith(color: colors_3)),
              SizedBox(height: 14.h),
            ]);
          case '[TEXT]':
            content.addAll([
              Text(article.content[i].replaceAll(tag, ''), style: context.s14w400.copyWith(color: colors_3)),
              SizedBox(height: 14.h),
            ]);
          case '[IMAGE]':
            content.addAll([
              Image.asset(article.content[i].replaceAll(tag, '')),
              SizedBox(height: 14.h),
            ]);
        }
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
          body: ListView(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 26.h, bottom: 92.h),
            shrinkWrap: true,
            children: [
              BlurContainer(
                width: 343.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: content,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
