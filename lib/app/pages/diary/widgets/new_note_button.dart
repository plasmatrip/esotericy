import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewNoteButton extends StatelessWidget {
  const NewNoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(const AddNoteView()),
      child: BlurContainer(
        width: 40.w,
        height: 32.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        child: SvgPicture.asset('assets/icons/Document Add.svg', width: 24.w, height: 24.h),
      ),
    );
  }
}
