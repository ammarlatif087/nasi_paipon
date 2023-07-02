import 'package:nasi_paipon/app/index.dart';
import 'package:nasi_paipon/presentation/common/textform_field.dart';
import 'package:nasi_paipon/presentation/view_models/edit_menu_view_model.dart';

import '../../../common/app_button.dart';

class AddNewMenuUser extends StatelessWidget {
  const AddNewMenuUser({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<EditMenuViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: Utils.popinMedText(
          'User Menu',
          color: ColorManager.white,
          fontSize: 18.sp,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 40.r,
                      backgroundImage: const AssetImage(AppImages.logo),
                    ),
                  ),
                  CircleAvatar(
                    radius: 40.r,
                    backgroundColor: Colors.black.withOpacity(0.5),
                  ),
                  Icon(
                    Icons.image,
                    color: ColorManager.darkGrey,
                    size: 24,
                  ),
                ],
              ),
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
                'Description',
                fontSize: 18.sp,
              ),
              16.spaceY,
              TextFieldWidget(
                keyboardType: TextInputType.text,
                hintText: 'Description',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Your Description';
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
              16.spaceY,
              Utils.popinMedText(
                'Production per day ',
                fontSize: 18.sp,
              ),
              16.spaceY,
              TextFieldWidget(
                keyboardType: TextInputType.text,
                hintText: 'Unit',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Unit';
                  }
                  return null;
                },
              ),
              16.spaceY,
              Utils.popinMedText(
                'Price RM',
                fontSize: 18.sp,
              ),
              16.spaceY,
              Row(
                children: [
                  SizedBox(
                    width: 150.w,
                    child: TextFieldWidget(
                      keyboardType: TextInputType.text,
                      hintText: 'Price',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your Price';
                        }
                        return null;
                      },
                    ),
                  ),
                  Radio<PriceOption>(
                    value: PriceOption.show,
                    groupValue: viewModel.selectedPriceOpt,
                    onChanged: (value) {
                      viewModel.setPriceOption(value!);
                    },
                  ),
                  Utils.popinRegText('Show'),
                  Radio<PriceOption>(
                    value: PriceOption.strike,
                    groupValue: viewModel.selectedPriceOpt,
                    onChanged: (value) {
                      viewModel.setPriceOption(value!);
                    },
                  ),
                  Utils.popinRegText('Strike'),
                ],
              ),
              16.spaceY,
              Utils.popinMedText(
                'Promo RM',
                fontSize: 18.sp,
              ),
              16.spaceY,
              Row(
                children: [
                  SizedBox(
                    width: 150.w,
                    child: TextFieldWidget(
                      keyboardType: TextInputType.text,
                      hintText: 'Promo RM',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your Prome RM';
                        }
                        return null;
                      },
                    ),
                  ),
                  Radio<PromoOption>(
                    value: PromoOption.show,
                    groupValue: viewModel.promoOption,
                    onChanged: (value) {
                      viewModel.selectedPromoOption(value!);
                    },
                  ),
                  Utils.popinRegText('Show'),
                  Radio<PromoOption>(
                    value: PromoOption.hide,
                    groupValue: viewModel.promoOption,
                    onChanged: (value) {
                      viewModel.selectedPromoOption(value!);
                    },
                  ),
                  Utils.popinRegText('Hide'),
                ],
              ),
              16.spaceY,
              Utils.popinMedText(
                'Category ',
                fontSize: 18.sp,
              ),
              16.spaceY,
              TextFieldWidget(
                keyboardType: TextInputType.text,
                hintText: 'Category',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Category';
                  }
                  return null;
                },
              ),
              16.spaceY,
              Utils.popinMedText(
                'Sub Category ',
                fontSize: 18.sp,
              ),
              16.spaceY,
              TextFieldWidget(
                keyboardType: TextInputType.text,
                hintText: 'Sub Category',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter Sub Category';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  Radio<FoodType>(
                    value: FoodType.halal,
                    groupValue: viewModel.selectedFood,
                    onChanged: (value) {
                      viewModel.setSelectedFood(value!);
                    },
                  ),
                  Utils.popinRegText('Halal'),
                  40.spaceX,
                  Radio<FoodType>(
                    value: FoodType.haram,
                    groupValue: viewModel.selectedFood,
                    onChanged: (value) {
                      viewModel.setSelectedFood(value!);
                    },
                  ),
                  Utils.popinRegText('Non Halal'),
                ],
              ),
              10.spaceY,
              AppButton(
                bgColor: ColorManager.primary,
                radius: 10.r,
                onPress: () {},
                child: Utils.popinMedText(
                  'Save',
                  color: ColorManager.white,
                  fontSize: 18.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
