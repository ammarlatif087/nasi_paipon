import 'package:nasi_paipon/presentation/common/app_button.dart';

import '../../../app/index.dart';
import '../../view_models/food_category_view_model.dart';
import '../../view_models/select_location_view_model.dart';

class PickUpLocationView extends StatelessWidget {
  const PickUpLocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SelectLocationViewModel>(context);
    final viewModelFood = Provider.of<SelectFoodCategoryViewModel>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: ColorManager.primary,
          title: Utils.popinSemBoldText('Location',
              fontSize: 20.sp, color: ColorManager.white),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.spaceY,
              Utils.popinSemBoldText(
                'Where would you pick up\nyour order?',
                fontSize: 18.sp,
              ),
              40.spaceY,
              DropdownButtonFormField<String>(
                value: viewModel.selectedRegion.isEmpty
                    ? null
                    : viewModel.selectedRegion,
                items: viewModel.regions.map((country) {
                  return DropdownMenuItem(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  viewModel.selectedRegion = value!;
                },
                borderRadius: BorderRadius.circular(20.r),
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Region',
                  hintText: 'Select a region',
                  labelStyle: TextStyleManager.popinsReg(
                    color: ColorManager.darkGrey,
                    fontSize: 16.sp,
                  ),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: ColorManager.darkGrey,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: ColorManager.darkGrey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: ColorManager.darkGrey,
                    ),
                  ),

                  // border: OutlineInputBorderRectangleStyle.getEnabledBorder(),
                  // enabledBorder:
                  // OutlineInputBorderCircularStyle.getEnabledBorder(),
                ),
              ),
              40.spaceY,
              DropdownButtonFormField<String>(
                value: viewModel.selectedSubRegion.isEmpty
                    ? null
                    : viewModel.selectedSubRegion,
                items: viewModel.subRegions.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  viewModel.selectedSubRegion = value!;
                },
                decoration: InputDecoration(
                  isDense: true,
                  labelText: 'Sub Region',
                  hintText: 'Select a Sub Region',
                  labelStyle: TextStyleManager.popinsReg(
                    color: ColorManager.darkGrey,
                    fontSize: 16.sp,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: ColorManager.darkGrey,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: ColorManager.darkGrey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      color: ColorManager.darkGrey,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              AppButton(
                radius: 10.r,
                bgColor: ColorManager.primary,
                onPress: viewModel.selectedRegion.isEmpty ||
                        viewModel.selectedSubRegion.isEmpty
                    ? null
                    : () {
                        viewModelFood.selectedCategories.isNotEmpty
                            ? Get.toNamed(Routes.bottomNavRoute)
                            : Get.toNamed(Routes.selectFoodCategoryRoute);
                      },
                child: Utils.popinMedText(
                  'Next',
                  fontSize: 16.sp,
                  color: ColorManager.white,
                ),
              ),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
