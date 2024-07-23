import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/internal/widgets/date_dialog.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CalendarButton extends StatelessWidget {
  const CalendarButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        var date = await dateDialog(context, context.read<NotesRepo>().selectedDate);
        if (date != null && context.mounted) {
          context.read<NotesRepo>().selectedDate = date;
        }
      },
      child: BlurContainer(
        width: 40.h,
        height: 32.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        child: SvgPicture.asset('assets/icons/Calendar.svg', width: 24.w, height: 24.h),
      ),
    );
  }
}
