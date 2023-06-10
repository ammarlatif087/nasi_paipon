import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/view_models/checkout_view_model.dart';

import '../../../app/index.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CheckoutViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinRegText(
          'My cart',
          fontSize: 16.sp,
          color: ColorManager.white,
        ),
      ),
      body: Column(
        children: [
          20.spaceY,
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              'Mayo Rool',
                              fontSize: 18.sp,
                            ),
                            10.spaceY,
                            Utils.popinRegText(
                              '5/10/2023 5:08 PM',
                            ),
                            10.spaceY,
                            Utils.popinSemBoldText(
                              'Price:RM ${viewModel.price}',
                            ),
                            10.spaceY,
                            Utils.popinSemBoldText(
                              'Total Price: RM ${viewModel.calculateTotalPrice()}',
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            PopupMenuButton<String>(
                              child: Container(
                                height: 36,
                                width: 48,
                                alignment: Alignment.centerRight,
                                child: const Icon(Icons.more_vert),
                              ),
                              onSelected: (value) {
                                // Handle the selected value
                                print('Selected value: $value');
                              },
                              itemBuilder: (context) => [
                                const PopupMenuItem<String>(
                                  value: 'remove',
                                  child: Text('Remove'),
                                ),
                              ],
                            ),
                            50.spaceY,
                            Container(
                              width: 100.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: ColorManager.grey,
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                    onTap: () => viewModel.decrement(),
                                    child: const Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  Utils.popinSemBoldText(
                                      viewModel.count.toString()),
                                  InkWell(
                                    onTap: () => viewModel.increment(),
                                    child: const Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: AppButton(
              bgColor: ColorManager.primary,
              radius: 10.r,
              onPress: () {
                Get.offAndToNamed(Routes.placeOrderRoute);
              },
              child: Utils.popinMedText(
                'Checkout',
                fontSize: 18.sp,
                color: ColorManager.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
