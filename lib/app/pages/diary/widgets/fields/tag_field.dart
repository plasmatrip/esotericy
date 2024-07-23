import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class TagField extends StatefulWidget {
  const TagField({
    super.key,
  });

  @override
  State<TagField> createState() => _TagFieldState();
}

class _TagFieldState extends State<TagField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<NotesRepo>().tag);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlurContainer(
          width: 343.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Тег', style: context.s12w500.copyWith(color: colors_2)),
              SizedBox(height: 8.h),
              SizedBox(
                width: 307.w,
                child: TextField(
                  controller: controller,
                  onChanged: (value) => context.read<NotesRepo>().tag = value,
                  style: context.s14w400.copyWith(color: colors_3),
                  decoration: InputDecoration.collapsed(
                    border: InputBorder.none,
                    hintText: 'Тег для быстрого поиска',
                    hintStyle: context.s14w400.copyWith(color: colors_4),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
