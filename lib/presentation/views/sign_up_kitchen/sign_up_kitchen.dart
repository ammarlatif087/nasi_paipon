import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nasi_paipon/app/extensions.dart';
import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';

import '../../../app/index.dart';
import '../../common/app_button.dart';
import '../../common/textform_field.dart';

class KitchenSignUpView extends StatelessWidget {
  const KitchenSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AuthViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Utils.popinBoldText(
                  'Create your\nKitchen',
                  fontSize: 24.sp,
                ),
                20.spaceY,
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: CircleAvatar(
                      radius: 34.r,
                      backgroundColor: ColorManager.primary,
                      child: Icon(
                        Icons.person,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ),
                20.spaceY,
                Form(
                  child: Column(
                    children: [
                      TextFieldWidget(
                        keyboardType: TextInputType.name,
                        hintText: 'Kitchen Name',
                        prefixIcon: Icon(
                          Icons.soup_kitchen,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Kitchen Name';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.name,
                        hintText: 'Address',
                        prefixIcon: Icon(
                          Icons.location_on_outlined,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Address';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.name,
                        hintText: 'Region',
                        prefixIcon: Icon(
                          Icons.location_on_outlined,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Region';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.name,
                        hintText: 'Sub Region',
                        prefixIcon: Icon(
                          Icons.location_on_outlined,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Sub Region';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.name,
                        hintText: 'Owner\'s Name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Owner\'s Name';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'NRIC No',
                        prefixIcon: Icon(
                          Icons.numbers,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter NRIC Name';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Company Name',
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Company Name';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Company Number',
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Company Number';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.text,
                        hintText: 'Bank',
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Bank';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Account No',
                        prefixIcon: Icon(
                          Icons.numbers,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Account No';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'email@example.com',
                        prefixIcon: Icon(
                          Icons.email,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) =>
                            value!.isValidEmail() ? null : 'Invalid Email',
                        onChange: (newValue) =>
                            viewModel.onEmailChange(newValue),
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Tiktok Link',
                        prefixIcon: Icon(
                          FontAwesomeIcons.tiktok,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter  Tiktok Link';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Facebook Link',
                        prefixIcon: Icon(
                          FontAwesomeIcons.facebook,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter  Facebook Link';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Instagram Link',
                        prefixIcon: Icon(
                          FontAwesomeIcons.instagram,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Instagram Link';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Website Link',
                        prefixIcon: Icon(
                          FontAwesomeIcons.globe,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter WebsiteLink';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        keyboardType: TextInputType.number,
                        hintText: 'Google Map location Link',
                        prefixIcon: Icon(
                          Icons.location_on,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter WebsiteLink';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      AppButton(
                        bgColor: ColorManager.primary,
                        radius: 20.r,
                        onPress: () {},
                        child: Utils.popinMedText('Sign Up',
                            color: ColorManager.white, fontSize: 16.sp),
                      ),
                      20.spaceY,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
