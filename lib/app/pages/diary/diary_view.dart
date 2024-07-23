import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/pages/diary/widgets/calendar_button.dart';
import 'package:esotericy/app/pages/diary/widgets/fields/search_field.dart';
import 'package:esotericy/app/pages/diary/widgets/new_note_button.dart';
import 'package:esotericy/app/pages/diary/widgets/notes_list.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

@RoutePage()
class DiaryView extends StatelessWidget {
  const DiaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/bg2.png',
            width: 375.w,
            height: 812.h,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 60.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Дневник практик', style: context.s36w800.copyWith(color: colors_3, letterSpacing: -2.w)),
                ),
                SizedBox(height: 16.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SearchField(),
                    CalendarButton(),
                    NewNoteButton(),
                  ],
                ),
                if (context.watch<NotesRepo>().repo.isEmpty) ...[
                  Column(
                    children: [
                      SizedBox(height: 81.h),
                      SvgPicture.asset('assets/vectors/empty_diary.svg', width: 343.w, height: 343.h),
                      Text('Начните записывать свои мысли', style: context.s14w400.copyWith(color: grey)),
                    ],
                  )
                ] else ...[
                  const NotesList(),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
