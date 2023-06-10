import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../app/index.dart';

class CompletedOrders extends StatelessWidget {
  const CompletedOrders({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> menuName = ['Mayo Role'];

    return Scaffold(
      body: menuName.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.circleQuestion,
                    size: 60.sp,
                    color: ColorManager.primary,
                  ),
                  20.spaceY,
                  Utils.popinSemBoldText(
                    'No Completed Orders',
                    fontSize: 20.sp,
                    color: ColorManager.primary,
                  )
                ],
              ),
            )
          : Column(
              children: [
                30.spaceY,
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: menuName.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => Get.toNamed(Routes.completedOrderDetails),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
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
                                      menuName[index],
                                      fontSize: 18.sp,
                                    ),
                                    10.spaceY,
                                    Utils.popinRegText(
                                      '5/10/2023 5:08 PM',
                                    ),
                                    10.spaceY,
                                    Utils.popinSemBoldText('Price: RM 300'),
                                    10.spaceY,
                                    Utils.popinSemBoldText(
                                      'Total Price: RM 500',
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.red,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Utils.popinSemBoldText(
                                          'Completed',
                                          color: ColorManager.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return 10.spaceY;
                    },
                  ),
                )
              ],
            ),
    );
  }
}
