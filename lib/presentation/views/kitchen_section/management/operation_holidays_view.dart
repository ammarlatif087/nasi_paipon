import 'package:intl/intl.dart';
import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';

import '../../../common/textform_field.dart';
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
              16.spaceY,
              SizedBox(
                width: 170.w,
                child: TextFieldWidget(
                  keyboardType: TextInputType.phone,
                  hintText: 'Starting Hour',
                  prefixIcon: Icon(
                    Icons.watch_later_outlined,
                    color: ColorManager.darkGrey,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter starting hour';
                    }
                    return null;
                  },
                ),
              ),
              16.spaceY,
              Utils.popinSemBoldText(
                'End',
                fontSize: 18.sp,
              ),
              16.spaceY,
              SizedBox(
                width: 170.w,
                child: TextFieldWidget(
                  keyboardType: TextInputType.phone,
                  hintText: 'Ending Hour',
                  prefixIcon: Icon(
                    Icons.watch_later_outlined,
                    color: ColorManager.darkGrey,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Endign hour';
                    }
                    return null;
                  },
                ),
              ),
              16.spaceY,
              Utils.popinSemBoldText(
                'Placing Order',
                fontSize: 18.sp,
              ),
              16.spaceY,
              CheckboxListTile(
                dense: true,
                checkColor: ColorManager.white,
                activeColor: ColorManager.primary,
                contentPadding: EdgeInsets.zero,
                title: Utils.popinMedText(
                  'Days in Advance',
                  fontSize: 18.sp,
                ),
                value: viewModel.isChecked,
                onChanged: (bool? value) {
                  viewModel.toggleCheckbox(value ?? false);
                },
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
                    viewModel.showDatePickerDialog(context);
                  }),
              16.spaceY,
              Column(
                children: viewModel.selectedDates.map((date) {
                  return Utils.popinSemBoldText(
                    DateFormat('dd-MM-yyyy').format(date),
                  );
                }).toList(),
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
