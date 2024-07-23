import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/fields/stage_field.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/fields/stage_name_field.dart';
import 'package:esotericy/app/repository/ft_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class StagesField extends StatelessWidget {
  const StagesField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlurContainer(
          width: 343.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Процесс выполнения', style: context.s12w500.copyWith(color: colors_2)),
              SizedBox(height: 10.h),
              for (int i = 0; i < context.watch<FTRepo>().stageCount; i++) ...[
                StageNameField(index: i),
                StageField(index: i),
              ],
              SizedBox(height: 14.h),
              FilledButton(
                onPressed: () => context.read<FTRepo>().addStage(),
                style: FilledButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  backgroundColor: colors_3,
                  foregroundColor: colors_2,
                  minimumSize: Size(315.w, 34.h),
                  maximumSize: Size(315.w, 34.h),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: colors_2, width: 1.h),
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  textStyle: context.s15w500,
                ),
                child: const Text('Добавить этап'),
              ),
            ],
          ),
        ),
        SizedBox(height: 16.h),
      ],
    );
  }
}
