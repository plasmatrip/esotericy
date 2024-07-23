import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/internal/widgets/edit_delete_dialog.dart';
import 'package:esotericy/app/models/notes.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    required this.note,
    super.key,
  });

  final Notes note;

  @override
  Widget build(BuildContext context) {
    GlobalKey globalKey = GlobalKey();
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(SelectedNoteView(noteKey: note.key)),
      child: BlurContainer(
        width: 343.w,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      DateFormat('dd', 'ru').format(note.date!),
                      style: context.textUnderline,
                    ),
                    Text(
                      DateFormat(' MMMM y, E', 'ru').format(note.date!),
                      style: context.s11w400.copyWith(color: colors_3),
                    ),
                  ],
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    var result = await editDeleteDialog(context, globalKey);
                    if (result != null && context.mounted) {
                      switch (result) {
                        case 'EDIT':
                          context.read<NotesRepo>().edit(note.key);
                          AutoRouter.of(context).push(const AddNoteView());
                        case 'DELETE':
                      }
                    }
                  },
                  child: SvgPicture.asset(
                    key: globalKey,
                    'assets/icons/Menu Dots.svg',
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ],
            ),
            SizedBox(height: 14.h),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60.w,
                  height: 100.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      for (int i = 0; i < (note.cards.length > 2 ? 2 : note.cards.length); i++) ...[
                        Positioned(
                          left: (i * 12).w,
                          top: (i * 20).h,
                          child: Image.asset(
                            note.cards[i],
                            width: 48.w,
                            height: 80.h,
                          ),
                        ),
                      ],
                      if (note.cards.length > 2) ...[
                        Positioned(
                          top: -5.w,
                          right: -5.h,
                          child: Container(
                            width: 26.h,
                            height: 26.h,
                            decoration: const BoxDecoration(
                              color: colors_5,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                                child: Text(
                              '+${note.cards.length - 2}',
                              style: context.s12w400.copyWith(color: colors_3),
                            )),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 230.w,
                  height: 110.h,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        note.name,
                        style: context.s17w500.copyWith(color: colors_3),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      Text(
                        note.comment,
                        style: context.s14w400.copyWith(color: grey),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Spacer(),
                      Text('#${note.tag.replaceAll(' ', ' #')}', style: context.s14w500.copyWith(color: colors_2)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
