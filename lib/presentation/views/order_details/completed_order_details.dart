import '../../../app/index.dart';
import '../../view_models/order_view_model.dart';

class CompletedOrderDetailsView extends StatelessWidget {
  const CompletedOrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<OrdersViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.primary,
        title: Utils.popinMedText(
          'Completed Orders',
          color: ColorManager.white,
          fontSize: 18.sp,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.r),
              width: 1.sw,
              decoration: BoxDecoration(
                color: ColorManager.black.withOpacity(.8),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Utils.popinSemBoldText(
                    'Kitchen Name',
                    fontSize: 16.sp,
                    color: ColorManager.white,
                  ),
                  10.spaceY,
                  Utils.popinMedText(
                    'Near Fazal Mosque ',
                    fontSize: 16.sp,
                    color: ColorManager.white,
                  ),
                ],
              ),
            ),
            10.spaceY,
            Container(
              width: 1.sw,
              decoration: BoxDecoration(
                color: ColorManager.black.withOpacity(.8),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.r),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Utils.popinSemBoldText(
                          'Order No.',
                          color: ColorManager.white,
                          fontSize: 12.sp,
                        ),
                        Utils.popinSemBoldText(
                          'Placed On',
                          color: ColorManager.white,
                          fontSize: 12.sp,
                        ),
                        Utils.popinSemBoldText(
                          'Paid On',
                          color: ColorManager.white,
                          fontSize: 12.sp,
                        ),
                        Utils.popinSemBoldText(
                          'Paid By',
                          color: ColorManager.white,
                          fontSize: 14.sp,
                        ),
                        Utils.popinSemBoldText(
                          'Status',
                          color: ColorManager.white,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Utils.popinSemBoldText(
                          '423432432423423',
                          color: ColorManager.white,
                          fontSize: 12.sp,
                        ),
                        Utils.popinSemBoldText(
                          '23/03/23',
                          color: ColorManager.white,
                          fontSize: 12.sp,
                        ),
                        Utils.popinSemBoldText(
                          '23/03/23',
                          color: ColorManager.white,
                          fontSize: 12.sp,
                        ),
                        Utils.popinSemBoldText(
                          'MayBank',
                          color: ColorManager.white,
                          fontSize: 14.sp,
                        ),
                        Utils.popinSemBoldText(
                          'Picked Up',
                          color: ColorManager.white,
                          fontSize: 14.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            20.spaceY,
            Container(
              padding: EdgeInsets.all(8.r),
              width: 1.sw,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(
                  10.r,
                ),
              ),
              child: Column(
                children: [
                  Utils.popinMedText(
                    'Pick Up Date: 20 May, 2023',
                  ),
                  Utils.popinMedText(
                    'Pick Up Time: 10:00 PM',
                  ),
                ],
              ),
            ),
            20.spaceY,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Utils.popinSemBoldText(
                        'Item',
                        color: ColorManager.black,
                        fontSize: 12.sp,
                      ),
                      10.spaceY,
                      SizedBox(
                        height: 100.h,
                        width: 100.w,
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: viewModel.itemList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Utils.popinSemBoldText(
                                  viewModel.itemList[index],
                                  color: ColorManager.black,
                                  fontSize: 12.sp,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Utils.popinSemBoldText(
                        'Qty',
                        color: ColorManager.black,
                        fontSize: 12.sp,
                      ),
                      10.spaceY,
                      SizedBox(
                        height: 100.h,
                        width: 100.w,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: viewModel.itemList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Utils.popinSemBoldText(
                                  '2',
                                  color: ColorManager.black,
                                  fontSize: 12.sp,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Utils.popinSemBoldText(
                        'Amount',
                        color: ColorManager.black,
                        fontSize: 12.sp,
                      ),
                      10.spaceY,
                      SizedBox(
                        height: 100.h,
                        width: 100.w,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: viewModel.itemList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Utils.popinSemBoldText(
                                  '200',
                                  color: ColorManager.black,
                                  fontSize: 12.sp,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            10.spaceY,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Utils.popinSemBoldText('Total:'),
                10.spaceX,
                Utils.popinSemBoldText('RM 91'),
                20.spaceX,
              ],
            ),
            20.spaceY,
            Container(
              padding: EdgeInsets.all(8.r),
              width: 1.sw,
              decoration: BoxDecoration(
                color: ColorManager.black.withOpacity(.8),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Utils.popinSemBoldText(
                    'Completed',
                    fontSize: 24.sp,
                    color: ColorManager.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
