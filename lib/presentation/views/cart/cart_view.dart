import 'package:nasi_paipon/presentation/common/app_button.dart';

import '../../../app/index.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.popinSemBoldText(
                'My cart',
                fontSize: 18.sp,
              ),
              20.spaceY,
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 100.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              AppImages.kitchen,
                            ),
                          ),
                        ),
                      ),
                      10.spaceX,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Utils.popinSemBoldText(
                            'Classic Kitchen',
                            fontSize: 18.sp,
                          ),
                          10.spaceY,
                          Utils.popinRegText(
                            'Near Fazal Masjid',
                          ),
                          10.spaceY,
                          Utils.popinSemBoldText(
                            'Wallet',
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 60.w,
                        height: 40.h,
                        child: AppButton(
                          radius: 20.r,
                          bgColor: ColorManager.grey,
                          child: Icon(
                            Icons.keyboard_arrow_right_rounded,
                            color: ColorManager.black,
                          ),
                          onPress: () {
                            Get.toNamed(Routes.checkoutRoute);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
