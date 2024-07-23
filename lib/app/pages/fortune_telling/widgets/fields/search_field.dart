import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/repository/ft_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SearchField extends StatefulWidget {
  const SearchField({
    super.key,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController(text: context.read<FTRepo>().searchString);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlurContainer(
      width: 343.w,
      height: 32.h,
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        onChanged: (value) => context.read<FTRepo>().searchString = value,
        style: context.s14w400.copyWith(color: colors_3),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Искать',
          hintStyle: context.s14w400.copyWith(color: colors_2),
          suffixIcon: SvgPicture.asset(
            'assets/icons/Magnifer.svg',
            width: 24.h,
            height: 24.h,
            fit: BoxFit.none,
          ),
        ),
      ),
    );
  }
}
