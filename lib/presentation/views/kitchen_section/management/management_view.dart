import 'package:nasi_paipon/presentation/common/app_button.dart';

import '../../../../app/index.dart';

class ManagementView extends StatelessWidget {
  const ManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttonText = [
      'Profile',
      'Edit Menu',
      'Operation & Holidays',
      'Orders',
      'Messenger',
    ];
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(18.0.w),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              buttonText.length,
              (index) => Padding(
                padding: EdgeInsets.all(8.0.w),
                child: AppButton(
                  bgColor: ColorManager.primary,
                  radius: 10.r,
                  child: Utils.popinMedText(
                    buttonText[index],
                    color: ColorManager.white,
                    fontSize: 18.sp,
                  ),
                  onPress: () {
                    switch (index) {
                      case 0:
                        Get.toNamed(Routes.editKitchenProfile);
                        break;
                      case 1:
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 16.h),
                                  AppButton(
                                    radius: 10.r,
                                    bgColor: ColorManager.primary,
                                    onPress: () {
                                      // Perform action for the first button
                                      Get.toNamed(Routes.userMenuRoute);
                                    },
                                    child: Utils.popinMedText(
                                      'Edit Menu(User)',
                                      color: ColorManager.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                  20.spaceY,
                                  AppButton(
                                    radius: 10.r,
                                    bgColor: ColorManager.primary,
                                    onPress: () {
                                      // Perform action for the first button
                                      Get.toNamed(Routes.kitchenMenu);
                                    },
                                    child: Utils.popinMedText(
                                      'Edit Menu(Agent)',
                                      color: ColorManager.white,
                                      fontSize: 18.sp,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );

                        break;
                      case 2:
                        Get.toNamed(Routes.operationHourRoute);
                        break;
                      case 3:
                        Get.toNamed(Routes.todaysOrderRoute);
                        break;
                      case 4:
                        Get.toNamed(Routes.messengerSectionRoute);
                        break;
                    }
                  },
                ),
              ),
            )),
      ),
    );
  }
}
