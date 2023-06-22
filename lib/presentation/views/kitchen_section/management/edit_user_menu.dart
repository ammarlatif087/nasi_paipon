import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';

import '../../../common/textform_field.dart';
import '../../../view_models/edit_menu_view_model.dart';

class EditUserMenu extends StatelessWidget {
  const EditUserMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<EditMenuViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinSemBoldText(
          'Edit User Menu',
          color: ColorManager.white,
          fontSize: 18.sp,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              16.spaceY,
              Utils.popinMedText(
                'Menu Name',
                fontSize: 18.sp,
              ),
              16.spaceY,
              TextFieldWidget(
                keyboardType: TextInputType.text,
                hintText: 'Menu Name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Your Menu Name';
                  }
                  return null;
                },
              ),
              16.spaceY,
              Utils.popinMedText(
                'Weight',
                fontSize: 18.sp,
              ),
              16.spaceY,
              TextFieldWidget(
                keyboardType: TextInputType.text,
                hintText: 'Weight in grams',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter weight in grams';
                  }
                  return null;
                },
              ),
              16.spaceY,
              Utils.popinMedText(
                'Packaging size',
                fontSize: 18.sp,
              ),
              16.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 70.w,
                    child: TextFieldWidget(
                      keyboardType: TextInputType.text,
                      hintText: 'mm',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter size';
                        }
                        return null;
                      },
                    ),
                  ),
                  Utils.popinMedText(
                    'x',
                    fontSize: 18.sp,
                  ),
                  SizedBox(
                    width: 70.w,
                    child: TextFieldWidget(
                      keyboardType: TextInputType.text,
                      hintText: 'mm',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter size';
                        }
                        return null;
                      },
                    ),
                  ),
                  Utils.popinMedText(
                    'x',
                    fontSize: 18.sp,
                  ),
                  SizedBox(
                    width: 70.w,
                    child: TextFieldWidget(
                      keyboardType: TextInputType.text,
                      hintText: 'mm',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter size';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Radio<Option>(
                    value: Option.publish,
                    groupValue: viewModel.selectedOption,
                    onChanged: (value) {
                      viewModel.setSelectedOption(
                        value!,
                      );
                    },
                  ),
                  Utils.popinRegText(
                    'publish',
                    fontSize: 16.sp,
                  ),
                  Radio<Option>(
                    value: Option.unpublish,
                    groupValue: viewModel.selectedOption,
                    onChanged: (value) {
                      viewModel.setSelectedOption(
                        value!,
                      );
                    },
                  ),
                  Utils.popinRegText(
                    'Unpublish',
                    fontSize: 16.sp,
                  ),
                ],
              ),
              30.spaceY,
              AppButton(
                bgColor: ColorManager.primary,
                radius: 10.r,
                child: Utils.popinMedText(
                  'Done',
                  color: ColorManager.white,
                  fontSize: 18.sp,
                ),
                onPress: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
