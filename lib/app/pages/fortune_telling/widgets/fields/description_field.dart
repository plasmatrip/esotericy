import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/repository/ft_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DescriptionField extends StatefulWidget {
  const DescriptionField({
    super.key,
  });

  @override
  State<DescriptionField> createState() => _DescriptionFieldState();
}

class _DescriptionFieldState extends State<DescriptionField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<FTRepo>().description);
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
              Text('Описание', style: context.s12w500.copyWith(color: colors_2)),
              SizedBox(height: 8.h),
              SizedBox(
                width: 307.w,
                child: TextField(
                  controller: controller,
                  onChanged: (value) => context.read<FTRepo>().description = value,
                  style: context.s14w400.copyWith(color: colors_3),
                  minLines: 3,
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
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
