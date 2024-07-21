// import 'package:fitlife_manager/app/const/colors.dart';
// import 'package:fitlife_manager/app/const/ui.dart';
// import 'package:fitlife_manager/app/utils/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// Future<String?> editDeleteDialog(BuildContext context, GlobalKey globalKey, [bool showDoneItem = false]) async {
//   return await showMenu<String?>(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(8.h),
//     ),
//     context: context,
//     color: shape,
//     surfaceTintColor: shape,
//     position: position(globalKey, context),
//     elevation: 10,
//     constraints: BoxConstraints(maxWidth: 120.w, minHeight: 94.h),
//     items: [
//       if (showDoneItem) ...[
//         PopupMenuItem<String>(
//           value: 'DONE',
//           height: 30.h,
//           child: Text('Выполнено', style: context.s12w400s.copyWith(color: acc)),
//         ),
//       ],
//       PopupMenuItem<String>(
//         value: 'EDIT',
//         height: 30.h,
//         child: Text('Редактировать', style: context.s12w400s.copyWith(color: white)),
//       ),
//       const PopupMenuDivider(),
//       PopupMenuItem<String>(
//         value: 'DELETE',
//         height: 30.h,
//         child: Text('Удалить', style: context.s12w400s.copyWith(color: red)),
//       ),
//     ],
//   );
// }
