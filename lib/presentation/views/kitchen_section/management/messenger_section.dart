import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';

class MessengerSection extends StatelessWidget {
  const MessengerSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> buttons = [
      'User',
      'Agent',
      'Bulk Message',
      'Review',
    ];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            4,
            (index) => Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  child: AppButton(
                      bgColor: ColorManager.primary,
                      radius: 10.r,
                      child: Utils.popinMedText(
                        buttons[index],
                        color: ColorManager.white,
                        fontSize: 18.sp,
                      ),
                      onPress: () {
                        switch (index) {
                          case 0:
                            Get.toNamed(Routes.messengerRoute);
                            break;
                          case 1:
                            Get.toNamed(Routes.messengerRoute);
                            break;
                          case 2:
                            Get.toNamed(Routes.bulkMessageRoute);
                            break;
                          case 3:
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
                                          Get.toNamed(Routes.userReviewRoute);
                                        },
                                        child: Utils.popinMedText(
                                          'User',
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
                                          Get.toNamed(Routes.agentReviewRoute);
                                        },
                                        child: Utils.popinMedText(
                                          'Agent',
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
                        }
                      }),
                )),
      ),
    );
  }
}
