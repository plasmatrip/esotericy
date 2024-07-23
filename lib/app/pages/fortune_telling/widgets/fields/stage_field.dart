import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/repository/ft_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class StageField extends StatefulWidget {
  const StageField({
    required this.index,
    super.key,
  });

  final int index;

  @override
  State<StageField> createState() => _StageFieldState();
}

class _StageFieldState extends State<StageField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<FTRepo>().getStage(widget.index));
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('\u2022  ', style: context.s14w400.copyWith(color: colors_4)),
                      SizedBox(
                        width: 285.w,
                        child: TextField(
                          controller: controller,
                          onChanged: (value) => context.read<FTRepo>().setStage(widget.index, value),
                          style: context.s14w400.copyWith(color: colors_3),
                          minLines: 1,
                          maxLines: 6,
                          decoration: InputDecoration.collapsed(
                            border: InputBorder.none,
                            hintText: 'Описание',
                            hintStyle: context.s14w400.copyWith(color: colors_4),
                          ),
                        ),
                      ),
                    ],
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
