import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/layout.dart';
import 'package:esotericy/app/repository/cards_repo.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LayoutList extends StatelessWidget {
  const LayoutList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Iterable layoutList = context.watch<CardsRepo>().layout();
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.only(top: 24.h, bottom: 92.h),
        itemCount: layoutList.length,
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemBuilder: (context, index) {
          Layout layout = layoutList.elementAt(index);
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () async => AutoRouter.of(context).push(SelectedLayoutView(layout: layout)),
            child: BlurContainer(
              width: 343.w,
              height: 88.h,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(layout.name, style: context.s19w500.copyWith(color: colors_3)),
                  ),
                  SvgPicture.asset('assets/icons/Round Alt Arrow Right.svg', width: 24.h, height: 24.h),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
