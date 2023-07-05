import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/common/textform_field.dart';

import '../../../common/app_info_widget.dart';
import '../../../view_models/set_holidays_view_model.dart';

class OperationAndHolidaysView extends StatelessWidget {
  const OperationAndHolidaysView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SetHolidaysViewModel>(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.all(18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Utils.popinSemBoldText(
                    'Operation Hour',
                    fontSize: 18.sp,
                  ),
                  const AppInfoWidget(
                    message: 'dummy data ',
                  )
                ],
              ),
              16.spaceY,
              Utils.popinSemBoldText(
                'Start',
                fontSize: 18.sp,
              ),

              GestureDetector(
                onTap: () {
                  viewModel.startTimePickerDialog(context);
                },
                child: Container(
                  height: 65.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: ColorManager.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: ColorManager.darkGrey,
                      ),
                      Utils.popinSemBoldText(
                        viewModel.selectedStartTime != null
                            ? viewModel.selectedStartTime!.format(context)
                            : 'Select Starting Hours',
                        fontSize: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
              Utils.popinSemBoldText(
                'End',
                fontSize: 18.sp,
              ),
              16.spaceY,
              GestureDetector(
                onTap: () {
                  viewModel.endPickerDialog(context);
                },
                child: Container(
                  height: 65.h,
                  width: 170.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    color: ColorManager.grey,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        color: ColorManager.darkGrey,
                      ),
                      Utils.popinSemBoldText(
                        viewModel.selectedEndTime != null
                            ? viewModel.selectedEndTime!.format(context)
                            : 'Select Ending Hours',
                        fontSize: 16.sp,
                      ),
                    ],
                  ),
                ),
              ),
              16.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Utils.popinSemBoldText(
                    'Placing Order',
                    fontSize: 18.sp,
                  ),
                  const AppInfoWidget(
                    message: 'dummy data ',
                  )
                ],
              ),
              16.spaceY,
              Row(
                children: [
                  SizedBox(
                    width: 40.w,
                    child: const TextFieldWidget(hintText: '2'),
                  ),
                  20.spaceX,
                  Utils.popinSemBoldText(
                    'Days in advance',
                    fontSize: 18.sp,
                  ),
                  const Spacer(),
                  const AppInfoWidget(
                    message: 'dummy data ',
                  ),
                ],
              ),
              16.spaceY,
              AppButton(
                  radius: 10.r,
                  bgColor: ColorManager.primary,
                  child: Utils.popinMedText(
                    'Select All Holiday Dates',
                    color: ColorManager.white,
                    fontSize: 18.sp,
                  ),
                  onPress: () {
                    print('object');
                    viewModel.showDatePickerDialog(context);
                    // viewModel.showDatePickerDialog(context);
                  }),
              16.spaceY,
              Column(
                children: viewModel.selectedDates
                    .map((date) => Text(date.toString()))
                    .toList(),
              ),
              // SfDateRangePicker(
              //   view: DateRangePickerView.month,
              //   selectionMode: DateRangePickerSelectionMode.multiple,
              // ),
              16.spaceY,
              Center(
                child: SizedBox(
                  width: 170.w,
                  child: AppButton(
                      radius: 10.r,
                      bgColor: ColorManager.primary,
                      child: Utils.popinMedText(
                        'Save',
                        color: ColorManager.white,
                        fontSize: 18.sp,
                      ),
                      onPress: () {}),
                ),
              ),
              16.spaceY,
              Center(
                child: SizedBox(
                  width: 170.w,
                  child: AppButton(
                    radius: 10.r,
                    bgColor: ColorManager.primary,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Utils.popinMedText(
                          'Stop Business',
                          color: ColorManager.white,
                          fontSize: 18.sp,
                        ),
                        const AppInfoWidget(
                          message: 'dummy data ',
                        )
                      ],
                    ),
                    onPress: () {},
                  ),
                ),
              ),
              16.spaceY,
            ],
          ),
        ),
      ),
    );
  }
}

class ToolTipCustomShape extends ShapeBorder {
  final bool usePadding;
  const ToolTipCustomShape({this.usePadding = true});

  @override
  EdgeInsetsGeometry get dimensions =>
      EdgeInsets.only(bottom: usePadding ? 20 : 0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect =
        Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
    return Path()
      ..addRRect(
          RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 4)))
      ..moveTo(rect.bottomCenter.dx - 10, rect.bottomCenter.dy)
      ..relativeLineTo(10, 20)
      ..relativeLineTo(10, 20)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}
