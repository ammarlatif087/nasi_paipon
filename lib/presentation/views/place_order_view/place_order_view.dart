import 'package:intl/intl.dart';

import '../../../app/index.dart';
import '../../common/app_button.dart';
import '../../view_models/order_view_model.dart';

class PlaceOrderView extends StatelessWidget {
  const PlaceOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<OrdersViewModel>(context);
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinMedText(
          'Checkout',
          fontSize: 16.sp,
          color: ColorManager.white,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            20.spaceY,
            ListTile(
              leading: const Icon(
                Icons.location_on,
              ),
              title: Utils.popinSemBoldText(
                'Kitchen 1',
                fontSize: 18.sp,
              ),
              subtitle: Utils.popinSemBoldText(
                  '39 Smith 71 Cherry Court Southampton SO53 5PD'),
            ),
            10.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 35.h,
                  width: 160.w,
                  child: AppButton(
                    radius: 10.r,
                    bgColor: ColorManager.primary,
                    child: Utils.popinSemBoldText(
                      viewModel.selectedDate != null
                          ? DateFormat('dd-MM-yyyy')
                              .format(viewModel.selectedDate!)
                          : 'Select Pick Up date',
                      color: ColorManager.white,
                      fontSize: 12.sp,
                    ),
                    onPress: () {
                      viewModel.showDatePickerDialog(context);
                    },
                  ),
                ),
                SizedBox(
                  height: 35.h,
                  width: 160.w,
                  child: AppButton(
                    radius: 10.r,
                    bgColor: ColorManager.primary,
                    child: Utils.popinSemBoldText(
                      viewModel.selectedTime != null
                          ? viewModel.selectedTime!.format(context)
                          : 'Select Pick Up time',
                      color: ColorManager.white,
                      fontSize: 12.sp,
                    ),
                    onPress: () {
                      viewModel.showTimePickerDialog(context);
                    },
                  ),
                ),
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Utils.popinRegText(
                'TODAY\'S OFFER',
                fontSize: 12.sp,
              ),
              subtitle: Utils.popinBoldText(
                'Review your order',
                fontSize: 18.sp,
              ),
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                    child: Card(
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 10.h),
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
                              child: Container(
                                decoration: BoxDecoration(
                                  color: ColorManager.black.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Center(
                                  child: Utils.popinSemBoldText(
                                    '1x',
                                    fontSize: 16.sp,
                                    color: ColorManager.white,
                                  ),
                                ),
                              ),
                            ),
                            10.spaceX,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          6.r,
                                        ),
                                        color: ColorManager.red,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(3.r),
                                        child: Utils.popinSemBoldText(
                                          'Drinks combo',
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                    5.spaceX,
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          6.r,
                                        ),
                                        color: ColorManager.red,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(3.r),
                                        child: Utils.popinSemBoldText(
                                          'RM1 OFF',
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 140.w,
                                  child: Utils.popinSemBoldText(
                                    'onion rings, chicken nuggets, tacos, pizza, hot dogs, and ice cream',
                                    fontSize: 12.sp,
                                    maxLine: 4,
                                  ),
                                ),
                                10.spaceY,
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {},
                                      child: Utils.popinMedText(
                                        'Edit',
                                        fontSize: 10.sp,
                                        color: ColorManager.darkGrey,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5.w),
                                      child: CircleAvatar(
                                        radius: 2.r,
                                        backgroundColor: ColorManager.black,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Utils.popinMedText(
                                        'Make this a value combo',
                                        fontSize: 10.sp,
                                        color: ColorManager.darkGrey,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Utils.popinSemBoldText(
                                  'RM29',
                                  color: ColorManager.primary,
                                  fontSize: 16.sp,
                                ),
                                5.spaceY,
                                Text(
                                  'RM 5.0',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: ColorManager.darkGrey,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return 15.spaceY;
                },
              ),
            ),
            ListTile(
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Utils.popinRegText(
                    'Transaction Fee',
                    fontSize: 12.sp,
                  ),
                  Utils.popinRegText(
                    'GST',
                    fontSize: 12.sp,
                  ),
                  Utils.popinRegText(
                    '3 items Subtotal',
                    fontSize: 12.sp,
                  ),
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Utils.popinRegText(
                    'RM1.00',
                    fontSize: 12.sp,
                  ),
                  Utils.popinRegText(
                    '0.00',
                    fontSize: 12.sp,
                  ),
                  Utils.popinRegText(
                    '39.96RM',
                    fontSize: 12.sp,
                  ),
                ],
              ),
            ),
            10.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Utils.popinRegText('Total: RM 39.78'),
                10.spaceX,
                SizedBox(
                  height: 35.h,
                  width: 120.w,
                  child: AppButton(
                    bgColor: ColorManager.primary,
                    radius: 10.r,
                    onPress: () {
                      _buildShowDialog(context);
                    },
                    child: Utils.popinMedText(
                      'Place Order',
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ],
            ),
            20.spaceY,
          ],
        ),
      ),
    );
  }

  void _buildShowDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Return the AlertDialog widget
        return Dialog(
          insetPadding: EdgeInsets.all((20.r)),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
          child: SizedBox(
            height: 300.h,
            width: 300.w,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: (20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Utils.popinSemBoldText('Your order has been revcieved'),
                  CircleAvatar(
                    backgroundColor: ColorManager.green,
                    radius: 30.r,
                    child: Icon(
                      Icons.done,
                      color: ColorManager.white,
                    ),
                  ),
                  Utils.popinMedText(
                    'Thank you for your order!',
                    textAlign: TextAlign.center,
                    fontSize: 18.sp,
                  ),
                  Utils.popinMedText(
                    'your order ID is: 123456!',
                    textAlign: TextAlign.center,
                    fontSize: 10.sp,
                  ),
                  Utils.popinMedText(
                    'you will receive an order confirmation email with details of your order',
                    textAlign: TextAlign.center,
                    fontSize: 10.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: AppButton(
                      radius: 10.r,
                      bgColor: ColorManager.primary,
                      onPress: () {
                        Get.offAllNamed(Routes.bottomNavRoute);
                      },
                      child: Utils.popinSemBoldText(
                        'Continue Shopping',
                        fontSize: 16.sp,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
