import 'package:esotericy/app/models/notes.dart';
import 'package:esotericy/app/pages/diary/widgets/note_item.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class NotesList extends StatelessWidget {
  const NotesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Iterable notes = context.watch<NotesRepo>().notes();
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.only(top: 24.h, bottom: 100.h),
        itemCount: notes.length,
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemBuilder: (context, index) {
          Notes note = notes.elementAt(index);
          return NoteItem(note: note);
        },
      ),
    );
  }
}
