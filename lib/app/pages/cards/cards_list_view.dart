import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/cards.dart';
import 'package:esotericy/app/pages/cards/widgets/types_ofcards_list.dart';
import 'package:esotericy/app/repository/cards_repo.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CardsListView extends StatelessWidget {
  const CardsListView({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable imagesList = context.watch<CardsRepo>().imagesList();
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
          body: Column(
            children: [
              const TypesOfcardsList(),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 92.h),
                  children: [
                    BlurContainer(
                      width: 343.w,
                      child: Wrap(
                        spacing: 8.w,
                        runSpacing: 14.h,
                        children: [
                          for (Cards card in imagesList) ...[
                            GestureDetector(
                              onTap: () async => AutoRouter.of(context).push(SelectedCardView(card: card)),
                              child: Image(
                                image: AssetImage(card.image),
                                width: 72.w,
                                height: 120.h,
                                loadingBuilder: (context, child, loadingProgress) => loadingProgress == null
                                    ? child
                                    : SizedBox(
                                        width: 72.w,
                                        height: 120.h,
                                        child: const Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
