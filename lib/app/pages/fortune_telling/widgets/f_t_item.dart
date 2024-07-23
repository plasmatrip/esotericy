import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/ft.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FTItem extends StatelessWidget {
  const FTItem({
    required this.ft,
    super.key,
  });

  final FT ft;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(SelectedFTView(ft: ft)),
      child: BlurContainer(
        width: 343.w,
        // height: 52.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 277.w,
              child: Text(
                ft.name,
                style: context.s19w500.copyWith(color: colors_3),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SvgPicture.asset('assets/icons/Round Arrow Right.svg', width: 24.h, height: 24.h),
          ],
        ),
      ),
    );
  }
}
