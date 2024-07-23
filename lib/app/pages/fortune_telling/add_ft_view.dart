import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/fields/description_field.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/fields/name_field.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/fields/stages_field.dart';
import 'package:esotericy/app/repository/ft_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

@RoutePage()
class AddFTView extends StatelessWidget {
  const AddFTView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/bg2.png',
            width: 375.w,
            height: 812.h,
            fit: BoxFit.cover,
          ),
          Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  context.read<FTRepo>().clear();
                  AutoRouter.of(context).removeLast();
                },
                child: Icon(Icons.arrow_back_ios, color: colors_3, size: 24.h),
              ),
              flexibleSpace: Image.asset(
                'assets/images/ab_bg.png',
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.h, color: const Color(0x999C859E)),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.h),
                  bottomRight: Radius.circular(8.h),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 110.h),
                child: const Column(
                  children: [
                    NameField(),
                    DescriptionField(),
                    StagesField(),
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: FilledButton(
              onPressed: context.watch<FTRepo>().canSave()
                  ? () async {
                      context.read<FTRepo>().save();
                      AutoRouter.of(context).removeLast();
                    }
                  : null,
              style: context.extraBtn,
              child: const Text('Сохранить'),
            ),
          ),
        ],
      ),
    );
  }
}
