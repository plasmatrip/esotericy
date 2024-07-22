import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class SelectedLayoutView extends StatelessWidget {
  const SelectedLayoutView({required this.layout, super.key});

  final Layout layout;

  @override
  Widget build(BuildContext context) {
    final RegExp tag = RegExp(r'\[(?<=\[)[0-9A-Z\s]+(?=\])\]');
    RegExpMatch? match;
    List<Widget> content = [];

    for (int i = 0; i < layout.content.length; i++) {
      match = tag.firstMatch(layout.content[i]);
      if (match != null) {
        switch (match[0]) {
          case '[TITLE]':
            content.addAll([
              Text(layout.name, style: context.s19w500.copyWith(color: colors_3)),
              SizedBox(height: 14.h),
            ]);
          case '[TEXT]':
            content.addAll([
              Text(layout.content[i].replaceAll(tag, ''), style: context.s14w400.copyWith(color: grey)),
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
            title: Text(layout.name),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
