// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:habit_builder/app/const/colors.dart';
// import 'package:habit_builder/app/const/ui.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';

// Future<DateTime?> dateDialog(BuildContext context, DateTime? selectedDate, [bool showEvents = false]) {
//   const monthName = ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'];
//   selectedDate ??= DateTime.now();

//   return showDialog<DateTime>(
//     context: context,
//     builder: (context) {
//       return StatefulBuilder(
//         builder: (context, setState) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
//             backgroundColor: Colors.white,
//             surfaceTintColor: Colors.white,
//             insetPadding: EdgeInsets.zero,
//             contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
//             clipBehavior: Clip.none,
//             content: SizedBox(
//               width: 308.w,
//               height: 278.h,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   TableCalendar(
//                     locale: 'ru',
//                     focusedDay: selectedDate!,
//                     firstDay: DateTime(2010, 1, 1),
//                     lastDay: DateTime(2035, 1, 1),
//                     rowHeight: 24.h,
//                     weekNumbersVisible: false,
//                     calendarFormat: CalendarFormat.month,
//                     startingDayOfWeek: StartingDayOfWeek.monday,
//                     calendarStyle: CalendarStyle(
//                       cellAlignment: Alignment.center,
//                       cellMargin: EdgeInsets.all(3.h),
//                       cellPadding: EdgeInsets.zero,
//                       outsideDaysVisible: true,
//                       defaultTextStyle: context.s11w400.copyWith(color: grayscale_2),
//                       selectedTextStyle: context.s11w400.copyWith(color: grayscale_6),
//                       selectedDecoration: const BoxDecoration(
//                         color: primary_3,
//                         shape: BoxShape.circle,
//                       ),
//                       todayTextStyle: context.s11w400.copyWith(color: grayscale_2),
//                       todayDecoration: ShapeDecoration(
//                         shape: CircleBorder(side: BorderSide(color: primary_3, width: 0.5.h)),
//                       ),
//                       weekendTextStyle: context.s11w400.copyWith(color: grayscale_2),
//                       outsideTextStyle: context.s12w300.copyWith(color: grayscale_4),
//                     ),
//                     onDaySelected: (selectedDay, focusedDay) {
//                       setState(() {
//                         selectedDate = selectedDay;
//                       });
//                     },
//                     selectedDayPredicate: (day) {
//                       return isSameDay(selectedDate, day);
//                     },
//                     headerStyle: HeaderStyle(
//                       titleTextFormatter: (date, locale) => '${monthName[date.month - 1]} ${DateFormat.y('ru').format(date)}',
//                       titleCentered: true,
//                       headerPadding: EdgeInsets.zero,
//                       headerMargin: EdgeInsets.zero,
//                       formatButtonVisible: false,
//                       rightChevronMargin: EdgeInsets.zero,
//                       leftChevronMargin: EdgeInsets.zero,
//                       titleTextStyle: context.s14w400.copyWith(color: primary_1),
//                       leftChevronIcon: const Icon(Icons.arrow_left, color: grayscale_4),
//                       rightChevronIcon: const Icon(Icons.arrow_right, color: primary_2),
//                     ),
//                     daysOfWeekHeight: 20.h,
//                     daysOfWeekStyle: DaysOfWeekStyle(
//                       weekdayStyle: context.s8w400.copyWith(color: grayscale_4),
//                       weekendStyle: context.s8w400.copyWith(color: grayscale_4),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       FilledButton(
//                         style: context.btnCancel.copyWith(
//                           minimumSize: MaterialStatePropertyAll(Size(118.w, 32.h)),
//                           maximumSize: MaterialStatePropertyAll(Size(118.w, 32.h)),
//                         ),
//                         onPressed: () => AutoRouter.of(context).maybePop(),
//                         child: const Text('Закрыть'),
//                       ),
//                       FilledButton(
//                         style: context.btnOk.copyWith(
//                           minimumSize: MaterialStatePropertyAll(Size(118.w, 32.h)),
//                           maximumSize: MaterialStatePropertyAll(Size(118.w, 32.h)),
//                         ),
//                         onPressed: () => AutoRouter.of(context).maybePop(selectedDate),
//                         child: const Text('Выбрать'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       );
//     },
//   );
// }
