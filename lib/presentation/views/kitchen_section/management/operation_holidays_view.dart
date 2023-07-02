import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/common/textform_field.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../view_models/set_holidays_view_model.dart';

class OperationAndHolidaysView extends StatelessWidget {
  const OperationAndHolidaysView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SetHolidaysViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Utils.popinSemBoldText(
                'Operation Hour',
                fontSize: 18.sp,
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
              Utils.popinSemBoldText(
                'Placing Order',
                fontSize: 18.sp,
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
              SfDateRangePicker(
                view: DateRangePickerView.month,
                selectionMode: DateRangePickerSelectionMode.multiple,
              ),
              16.spaceY,
              Center(
                child: SizedBox(
                  width: 150.w,
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
            ],
          ),
        ),
      ),
    );
  }
}
