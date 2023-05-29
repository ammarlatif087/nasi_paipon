// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import '../../../app/index.dart';

// class MenuView extends StatelessWidget {
//   const MenuView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     height: 40.h,
//                     width: 50.w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.r),
//                       color: ColorManager.grey,
//                     ),
//                     child: Icon(
//                       Icons.e_mobiledata,
//                       color: ColorManager.black,
//                     ),
//                   ),
//                   10.spaceX,
//                   Container(
//                     height: 40.h,
//                     width: 100.w,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.r),
//                       color: ColorManager.grey,
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Utils.popinRegText('Sort By'),
//                         Icon(
//                           FontAwesomeIcons.sort,
//                           color: ColorManager.black,
//                           size: 15.sp,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               40.spaceY,
//               Expanded(
//                 child: ListView.separated(
//                   shrinkWrap: true,
//                   itemCount: 15,
//                   itemBuilder: (BuildContext context, int index) {
//                     return InkWell(
//                       onTap: () => Get.toNamed(Routes.menuDetailRoute),
//                       child: Container(
//                         height: 100.h,
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: ColorManager.black.withOpacity(0.1),
//                               blurRadius: 10.r,
//                               spreadRadius: 1.r,
//                             ),
//                           ],
//                           color: ColorManager.white,
//                           borderRadius: BorderRadius.circular(10.r),
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Container(
//                               width: 100.w,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10.r),
//                                 image: const DecorationImage(
//                                   fit: BoxFit.cover,
//                                   image: AssetImage(
//                                     AppImages.kitchen,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             20.spaceX,
//                             Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Utils.popinMedText(
//                                   'Prome',
//                                   fontSize: 16.sp,
//                                   color: ColorManager.orange,
//                                 ),
//                                 SizedBox(
//                                   width: 200.w,
//                                   child: Utils.popinSemBoldText(
//                                     'Lorem Ipsum is simply dummy ',
//                                     textOverflow: TextOverflow.ellipsis,
//                                     fontSize: 16.sp,
//                                   ),
//                                 ),
//                                 Utils.popinRegText(
//                                   'Lorem Ipsum',
//                                   fontSize: 16.sp,
//                                   color: ColorManager.red,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Icon(
//                                       FontAwesomeIcons.infinity,
//                                       color: ColorManager.blue,
//                                       size: 20.sp,
//                                     ),
//                                     10.spaceX,
//                                     Utils.popinRegText('RM 2.0',
//                                         color: ColorManager.orange),
//                                     10.spaceX,
//                                     Text(
//                                       'RM 5.0',
//                                       style: TextStyle(
//                                           color: ColorManager.darkGrey,
//                                           decoration:
//                                               TextDecoration.lineThrough),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                   separatorBuilder: (BuildContext context, int index) {
//                     return 10.spaceY;
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
