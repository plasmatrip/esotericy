import 'package:auto_route/auto_route.dart';
import 'package:esotericy/app/internal/const/colors.dart';
import 'package:esotericy/app/internal/const/ui.dart';
import 'package:esotericy/app/internal/widgets/blur_comtainer.dart';
import 'package:esotericy/app/models/notes.dart';
import 'package:esotericy/app/repository/notes_repo.dart';
import 'package:esotericy/app/routing/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class SelectedNoteView extends StatefulWidget {
  const SelectedNoteView({required this.noteKey, super.key});

  final int noteKey;

  @override
  State<SelectedNoteView> createState() => _SelectedNoteViewState();
}

class _SelectedNoteViewState extends State<SelectedNoteView> {
  PageController controller = PageController();
  late Notes note;

  @override
  void initState() {
    note = context.read<NotesRepo>().repo.get(widget.noteKey);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            title: const Text('Просмотр записи'),
            centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () async {
                    context.read<NotesRepo>().edit(note.key);
                    var result = await AutoRouter.of(context).push(const AddNoteView());
                    if (result != null && context.mounted) {
                      setState(() {
                        note = context.read<NotesRepo>().repo.get(widget.noteKey);
                      });
                    }
                  },
                  child: SvgPicture.asset('assets/icons/Pen.svg', width: 24.w, height: 24.h),
                ),
              )
            ],
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
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 92.h),
              child: BlurContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 221.w,
                        height: 370.h,
                        child: ListView.separated(
                          controller: controller,
                          scrollDirection: Axis.horizontal,
                          itemCount: note.cards.length,
                          separatorBuilder: (context, index) => SizedBox(width: 12.w),
                          itemBuilder: (context, index) {
                            return Image.asset(note.cards[index], width: 221.w, height: 370.h);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: note.cards.length,
                        effect: ScrollingDotsEffect(
                          dotWidth: 8.h,
                          dotHeight: 8.h,
                          dotColor: colors_2,
                          activeDotColor: grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      note.name,
                      style: context.s19w500.copyWith(color: colors_3),
                    ),
                    SizedBox(height: 14.h),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        DateFormat('dd MMMM y, E', 'ru').format(note.date!),
                        style: context.s14w400.copyWith(color: colors_3),
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      note.comment,
                      style: context.s14w400.copyWith(color: grey),
                    ),
                    SizedBox(height: 14.h),
                    Text('#${note.tag.replaceAll(' ', ' #')}', style: context.s14w500.copyWith(color: colors_2)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
