import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/ft_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SelectedFDGroupView extends StatelessWidget {
  const SelectedFDGroupView({required this.ftGroup, super.key});

  final FTGroup ftGroup;

  @override
  Widget build(BuildContext context) {
    final RegExp tag = RegExp(r'\[(?<=\[)[0-9A-Z]+(?=\])\]');
    final RegExp number = RegExp(r'(?<=\[)\d+(?=\])');
    RegExpMatch? match;
    List<Widget> content = [];
    for (int i = 0; i < ftGroup.content.length; i++) {
      match = tag.firstMatch(ftGroup.content[i]);
      if (match != null) {
        switch (match[0]!) {
          case '[ICON]':
            content.addAll(
              [
                Center(child: SvgPicture.asset(ftGroup.icon, height: 125.h)),
                SizedBox(height: 14.h),
              ],
            );
          case '[TEXT]':
            content.addAll(
              [
                Text(ftGroup.content[i].replaceAll(tag, ''), style: context.s14w400.copyWith(color: colors_3)),
                SizedBox(height: 14.h),
              ],
            );
          case '[SMALLICON]':
            content.addAll(
              [
                Center(child: SvgPicture.asset(ftGroup.icon, height: 24.h)),
                SizedBox(height: 14.h),
              ],
            );
          case '[BULLET]':
            content.addAll(
              [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('\u2022  ', style: context.s14w400.copyWith(color: colors_3)),
                    Expanded(
                      child: Column(
                        children: [
                          Text(ftGroup.content[i].replaceAll(tag, ''), style: context.s14w400.copyWith(color: colors_3)),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 14.h),
              ],
            );
          default:
            match = number.firstMatch(ftGroup.content[i]);
            if (match != null) {
              content.addAll(
                [
                  Text(
                    '${match[0]!} ${ftGroup.content[i].replaceAll(tag, '')}',
                    style: context.s16w500.copyWith(color: colors_2),
                  ),
                  SizedBox(height: 14.h),
                ],
              );
            }
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
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 92.h),
              child: BlurContainer(
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
