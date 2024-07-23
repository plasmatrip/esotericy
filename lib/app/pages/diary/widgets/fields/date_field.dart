import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/internal/widgets/date_dialog.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DateField extends StatelessWidget {
  const DateField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async {
        var date = await dateDialog(context, context.read<NotesRepo>().date);
        if (date != null && context.mounted) {
          context.read<NotesRepo>().date = date;
        }
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlurContainer(
            width: 343.w,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (context.watch<NotesRepo>().date == null) ...[
                  Text(
                    'Дата записи',
                    style: context.s14w400.copyWith(color: colors_4),
                  ),
                ] else ...[
                  Text(
                    DateFormat('dd MMMM y, E', 'ru').format(context.read<NotesRepo>().date!),
                    style: context.s14w400.copyWith(color: colors_3),
                  ),
                ],
                SvgPicture.asset('assets/icons/Calendar Mark.svg', width: 24.w, height: 24.h),
              ],
            ),
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
