import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/f_t_list.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/fields/search_field.dart';
import 'package:esotericy/app/repository/ft_repo.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

@RoutePage()
class FortuneTellingView extends StatelessWidget {
  const FortuneTellingView({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable ftList = context.watch<FTRepo>().ftList();
    return Stack(
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
              onTap: () => AutoRouter.of(context).removeLast(),
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
          body: Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
            child: Column(
              children: [
                const SearchField(),
                SizedBox(height: 24.h),
                FTList(ftList: ftList),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FilledButton(
            onPressed: () async => AutoRouter.of(context).push(const AddFTView()),
            style: context.extraBtn,
            child: const Text('Добавить гадание'),
          ),
        ),
      ],
    );
  }
}
