import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/view_models/select_location_view_model.dart';

import '../../../app/index.dart';
import '../../common/textform_field.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<SelectLocationViewModel>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorManager.primary,
          title: Utils.popinMedText('Edit Profile',
              color: ColorManager.white, fontSize: 16.sp),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Column(
              children: [
                20.spaceY,
                CircleAvatar(
                  radius: 50.r,
                  backgroundImage: const AssetImage(
                    AppImages.logo,
                  ),
                ),
                20.spaceY,
                TextFieldWidget(
                  keyboardType: TextInputType.name,
                  hintText: 'First Name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: ColorManager.darkGrey,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Your First Name';
                    }
                    return null;
                  },
                ),
                20.spaceY,
                TextFieldWidget(
                  keyboardType: TextInputType.name,
                  hintText: 'Last Name',
                  prefixIcon: Icon(
                    Icons.person,
                    color: ColorManager.darkGrey,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Your Last Name';
                    }
                    return null;
                  },
                ),
                20.spaceY,
                TextFieldWidget(
                  keyboardType: TextInputType.number,
                  hintText: 'Number',
                  prefixIcon: Icon(
                    Icons.phone,
                    color: ColorManager.darkGrey,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter Your Number';
                    }
                    return null;
                  },
                ),
                20.spaceY,
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
                  style: TextStyleManager.popinsReg(),
                  borderRadius: BorderRadius.circular(20.r),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Select a region',
                    labelStyle: TextStyleManager.popinsReg(
                      color: ColorManager.darkGrey,
                      fontSize: 16.sp,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                10.spaceY,
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
                  style: TextStyleManager.popinsReg(),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Select a Sub Region',
                    labelStyle: TextStyleManager.popinsReg(
                      color: ColorManager.darkGrey,
                      fontSize: 16.sp,
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                40.spaceY,
                AppButton(
                  bgColor: ColorManager.primary,
                  radius: 10.r,
                  child: Utils.popinMedText(
                    'Update',
                    color: ColorManager.white,
                    fontSize: 16.sp,
                  ),
                  onPress: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
