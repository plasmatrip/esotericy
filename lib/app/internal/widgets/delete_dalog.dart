// import 'package:fitlife_manager/app/const/colors.dart';
// import 'package:fitlife_manager/app/const/ui.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// Future<String?> deleteDialog(BuildContext context, String question) {
//   return showDialog<String>(
//     context: context,
//     builder: (context) {
//       return StatefulBuilder(
//         builder: (context, setState) {
//           return AlertDialog(
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
//             backgroundColor: shape,
//             surfaceTintColor: shape,
//             elevation: 7,
//             actionsPadding: EdgeInsets.zero,
//             actionsAlignment: MainAxisAlignment.center,
//             actions: <Widget>[
//               Container(
//                 width: 331.w,
//                 height: 161.h,
//                 padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
//                 child: Column(
//                   children: [
//                     Text('Удалить', style: context.s22w600.copyWith(color: red)),
//                     const Spacer(),
//                     Text(
//                       question,
//                       style: context.s14w300s.copyWith(color: white),
//                       textAlign: TextAlign.center,
//                     ),
//                     const Spacer(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         FilledButton(
//                           onPressed: () => Navigator.of(context, rootNavigator: true).pop('CANCEL'),
//                           style: context.btnPopupCancel,
//                           child: const Text('Закрыть'),
//                         ),
//                         FilledButton(
//                           onPressed: () => Navigator.of(context, rootNavigator: true).pop('DELETE'),
//                           style: context.btnPopupOk.copyWith(
//                             backgroundColor: const MaterialStatePropertyAll(red),
//                           ),
//                           child: const Text('Удалить'),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       );
//     },
//   );
// }
