import 'package:esotericy/app/models/ft.dart';
import 'package:esotericy/app/pages/fortune_telling/widgets/f_t_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FTList extends StatelessWidget {
  const FTList({
    required this.ftList,
    super.key,
  });

  final Iterable ftList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: ftList.length,
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemBuilder: (context, index) {
          FT ft = ftList.elementAt(index);
          return FTItem(ft: ft);
        },
      ),
    );
  }
}
