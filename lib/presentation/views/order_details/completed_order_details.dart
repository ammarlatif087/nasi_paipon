import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nasi_paipon/presentation/common/textform_field.dart';

import '../../../app/index.dart';
import '../../common/app_button.dart';
import '../../view_models/order_view_model.dart';

class CompletedOrderDetailsView extends StatelessWidget {
  const CompletedOrderDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<OrdersViewModel>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                        fontSize: 16.sp,
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
                                InkWell(
                                  onTap: () {
                                    showRatingDialog(context);
                                  },
                                  child: Utils.popinSemBoldText(
                                    viewModel.itemList[index],
                                    color: ColorManager.black,
                                    fontSize: 16.sp,
                                  ),
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
                        fontSize: 16.sp,
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
                                  fontSize: 16.sp,
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
                        fontSize: 16.sp,
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
                                  fontSize: 16.sp,
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
            10.spaceY,
            Utils.popinMedText(
              'Click on menu to give review',
              color: ColorManager.primary,
            ),
          ],
        ),
      ),
    );
  }

  void showRatingDialog(BuildContext context) {
    double rating = 0;
    TextEditingController textEditingController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Utils.popinSemBoldText(
                'Mutton Biryani',
                fontSize: 18.sp,
              ),
              10.spaceY,
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 40.0,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: ColorManager.accent,
                ),
                onRatingUpdate: (newRating) {
                  rating = newRating;
                },
              ),
              10.spaceY,
              Utils.popinMedText(
                'Rate this food',
                fontSize: 18.sp,
              ),
              20.spaceY,
              TextFieldWidget(
                hintText: 'Write your review',
                controller: textEditingController,
              ),
              30.spaceY,
              SizedBox(
                height: 40.h,
                child: AppButton(
                  bgColor: ColorManager.primary,
                  radius: 10.r,
                  child: const Text('Submit'),
                  onPress: () {
                    // Handle the submitted rating and comment
                    String comment = textEditingController.text;

                    // Access the RatingViewModel instance
                    final ratingViewModel =
                        Provider.of<OrdersViewModel>(context, listen: false);

                    // Update the rating in the view model
                    ratingViewModel.updateRating(rating);

                    // Print the updated rating and submitted comment
                    print('Updated rating: ${ratingViewModel.rating}');
                    print('Submitted comment: $comment');

                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
