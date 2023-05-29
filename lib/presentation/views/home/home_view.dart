import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';
import 'package:nasi_paipon/presentation/view_models/select_location_view_model.dart';

import '../../../app/index.dart';
import '../../utils/enums.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SelectLocationViewModel>(context);
    final authViewModel = Provider.of<AuthViewModel>(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Utils.popinSemBoldText(
            'Select Menu',
            fontSize: 24.sp,
          ),
          20.spaceY,
          DropdownButtonFormField<String>(
            value: viewModel.selectedRegion.isEmpty
                ? null
                : viewModel.selectedRegion,
            items: viewModel.regions.map((country) {
              return DropdownMenuItem(
                value: country,
                child: Text(country),
              );
            }).toList(),
            onChanged: (value) {
              viewModel.selectedRegion = value!;
            },
            style: TextStyleManager.popinsReg(),
            borderRadius: BorderRadius.circular(20.r),
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Select a region',
              labelStyle: TextStyleManager.popinsReg(
                color: ColorManager.darkGrey,
                fontSize: 16.sp,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                  color: ColorManager.darkGrey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                  color: ColorManager.darkGrey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                  color: ColorManager.darkGrey,
                ),
              ),
            ),
          ),
          10.spaceY,
          DropdownButtonFormField<String>(
            value: viewModel.selectedSubRegion.isEmpty
                ? null
                : viewModel.selectedSubRegion,
            items: viewModel.subRegions.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {
              viewModel.selectedSubRegion = value!;
            },
            style: TextStyleManager.popinsReg(),
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Select a Sub Region',
              labelStyle: TextStyleManager.popinsReg(
                color: ColorManager.darkGrey,
                fontSize: 16.sp,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                  color: ColorManager.darkGrey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                  color: ColorManager.darkGrey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide(
                  color: ColorManager.darkGrey,
                ),
              ),
            ),
          ),
          20.spaceY,
          Row(
            children: [
              Container(
                height: 40.h,
                width: 50.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: ColorManager.grey,
                ),
                child: Icon(
                  Icons.sort_rounded,
                  color: ColorManager.black,
                ),
              ),
              10.spaceX,
              InkWell(
                onTap: () => Get.offAndToNamed(Routes.selectFoodCategoryRoute),
                child: Container(
                  height: 40.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: ColorManager.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Utils.popinRegText('Sort By'),
                      Icon(
                        FontAwesomeIcons.sort,
                        color: ColorManager.black,
                        size: 15.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          20.spaceY,
          //   Expanded(
          //     child: ListView.separated(
          //       shrinkWrap: true,
          //       itemCount: 4,
          //       itemBuilder: (BuildContext context, int index) {
          //         return InkWell(
          //           onTap: () => Get.toNamed(Routes.menuRoute),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               color: ColorManager.black,
          //               borderRadius: BorderRadius.circular(20.r),
          //               image: const DecorationImage(
          //                 fit: BoxFit.cover,
          //                 image: AssetImage(
          //                   AppImages.kitchen,
          //                 ),
          //               ),
          //             ),
          //             child: Container(
          //               height: 130.h,
          //               width: 1.sw,
          //               decoration: BoxDecoration(
          //                 color: ColorManager.black.withOpacity(0.5),
          //                 borderRadius: BorderRadius.circular(20.r),
          //               ),
          //               child: Padding(
          //                 padding: EdgeInsets.symmetric(
          //                     horizontal: 10.w, vertical: 20.h),
          //                 child: Column(
          //                   crossAxisAlignment: CrossAxisAlignment.start,
          //                   children: [
          //                     Utils.popinSemBoldText(
          //                       'No 2 Kitchen',
          //                       color: ColorManager.white,
          //                     ),
          //                     Utils.popinMedText(
          //                       'Nothing street #7 near this House',
          //                       color: ColorManager.white,
          //                     ),
          //                     const Spacer(),
          //                     Container(
          //                       height: 30.h,
          //                       width: 80.w,
          //                       decoration: BoxDecoration(
          //                           borderRadius: BorderRadius.circular(15.r),
          //                           color: ColorManager.white),
          //                       child: Center(
          //                           child: Utils.popinSemBoldText('Alor Star')),
          //                     )
          //                   ],
          //                 ),
          //               ),
          //             ),
          //           ),
          //         );
          //       },
          //       separatorBuilder: (BuildContext context, int index) {
          //         return 10.spaceY;
          //       },
          //     ),
          //   ),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => Get.toNamed(Routes.menuDetailRoute),
                  child: Container(
                    height: 120.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.black.withOpacity(0.1),
                          blurRadius: 10.r,
                          spreadRadius: 1.r,
                        ),
                      ],
                      color: ColorManager.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                AppImages.kitchen,
                              ),
                            ),
                          ),
                        ),
                        20.spaceX,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Utils.popinMedText(
                              'Prome',
                              fontSize: 16.sp,
                              color: ColorManager.orange,
                            ),
                            SizedBox(
                              width: 200.w,
                              child: Utils.popinSemBoldText(
                                'Lorem Ipsum is simply dummy ',
                                textOverflow: TextOverflow.ellipsis,
                                fontSize: 16.sp,
                              ),
                            ),
                            Utils.popinRegText(
                              'Lorem ',
                              fontSize: 16.sp,
                              color: ColorManager.red,
                            ),
                            authViewModel.profileType == ProfileType.agent
                                ? SizedBox(
                                    width: 150.w,
                                    height: 30.h,
                                    child: AppButton(
                                      bgColor: ColorManager.primary,
                                      radius: 10.r,
                                      child: Utils.popinMedText(
                                        'Request',
                                        color: ColorManager.white,
                                      ),
                                      onPress: () {},
                                    ),
                                  )
                                : Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.infinity,
                                        color: ColorManager.blue,
                                        size: 20.sp,
                                      ),
                                      10.spaceX,
                                      Utils.popinRegText('RM 2.0',
                                          color: ColorManager.orange),
                                      10.spaceX,
                                      Text(
                                        'RM 5.0',
                                        style: TextStyle(
                                            color: ColorManager.darkGrey,
                                            decoration:
                                                TextDecoration.lineThrough),
                                      ),
                                    ],
                                  )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return 10.spaceY;
              },
            ),
          ),
        ],
      ),
    );
  }
}
