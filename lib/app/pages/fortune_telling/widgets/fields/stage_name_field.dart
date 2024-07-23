import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/repository/ft_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class StageNameField extends StatefulWidget {
  const StageNameField({
    required this.index,
    super.key,
  });

  final int index;

  @override
  State<StageNameField> createState() => _StageNameFieldState();
}

class _StageNameFieldState extends State<StageNameField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<FTRepo>().getStageName(widget.index));
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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VerticalDivider(
                color: colors_4,
                thickness: 0.5.w,
                width: 0.5.w,
              ),
              SizedBox(width: 4.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.index != 0) ...[
                    SizedBox(height: 14.h),
                  ],
                  SizedBox(
                    width: 307.w,
                    height: 30.h,
                    child: TextField(
                      controller: controller,
                      onChanged: (value) => context.read<FTRepo>().setStageName(widget.index, value),
                      style: context.s14w400.copyWith(color: colors_3),
                      decoration: InputDecoration.collapsed(
                        border: InputBorder.none,
                        hintText: 'Название этапа',
                        hintStyle: context.s14w400.copyWith(color: colors_4),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
