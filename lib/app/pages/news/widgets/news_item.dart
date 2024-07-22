import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/news.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    required this.article,
    super.key,
  });

  final News article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () async => AutoRouter.of(context).push(SelectedNewsView(article: article)),
      child: BlurContainer(
        width: 343.w,
        height: 189.h,
        child: SizedBox(
          width: 315.w,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(article.image, width: 96.w, height: 161.h, fit: BoxFit.cover),
              const Spacer(),
              SizedBox(
                width: 191.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      article.title,
                      style: context.s17w500.copyWith(color: colors_3, letterSpacing: -1.w),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      article.subtitle,
                      style: context.s14w400.copyWith(color: grey, letterSpacing: -1.w),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      article.type,
                      style: context.s14w500.copyWith(color: colors_2, letterSpacing: -1.w),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
