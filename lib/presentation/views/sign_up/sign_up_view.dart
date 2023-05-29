import 'package:nasi_paipon/app/extensions.dart';
import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';

import '../../../app/index.dart';
import '../../common/app_button.dart';
import '../../common/social_login_widget.dart';
import '../../common/textform_field.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

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
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                  ),
                ),
                20.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Utils.popinBoldText(
                      'Create your\nAccount',
                      fontSize: 24.sp,
                    ),
                    InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 34.r,
                        backgroundColor: ColorManager.primary,
                        child: Icon(
                          Icons.person,
                          color: ColorManager.white,
                        ),
                      ),
                    ),
                  ],
                ),
                20.spaceY,
                Form(
                  child: Column(
                    children: [
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
                        keyboardType: TextInputType.phone,
                        hintText: 'Phone No',
                        prefixIcon: Icon(
                          Icons.phone,
                          color: ColorManager.darkGrey,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your Phone No';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      TextFieldWidget(
                        obscureText: viewModel.isPassObs,
                        keyboardType: TextInputType.name,
                        hintText: 'Enter your password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: ColorManager.darkGrey,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () => viewModel.showPassword(),
                          child: Icon(
                            viewModel.isPassObs
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: ColorManager.darkGrey,
                            size: 20.sp,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Enter Your passwords';
                          }
                          return null;
                        },
                      ),
                      20.spaceY,
                      Row(
                        children: [
                          SizedBox(
                            height: 25.h,
                            width: 25.h,
                            child: Checkbox(
                              checkColor: ColorManager.white,
                              activeColor: ColorManager.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              value: viewModel.isRem,
                              onChanged: (value) => viewModel.toggleRem(value),
                            ),
                          ),
                          20.spaceX,
                          Utils.popinMedText('Remember Me'),
                        ],
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            color: ColorManager.darkGrey,
                            height: 1.h,
                            width: 80.w,
                          ),
                          Utils.popinRegText('Or Continue with',
                              color: ColorManager.darkGrey, fontSize: 12.sp),
                          Container(
                            color: ColorManager.darkGrey,
                            height: 1.h,
                            width: 80.w,
                          ),
                        ],
                      ),
                      20.spaceY,
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SocialLoginWidget(
                      color: ColorManager.blue,
                      child: Icon(
                        Icons.facebook,
                        color: ColorManager.blue,
                      ),
                      onPress: () {},
                    ),
                    SocialLoginWidget(
                      color: ColorManager.blue,
                      child: Center(
                        heightFactor: 25.h,
                        widthFactor: 25.h,
                        child: Image.asset(
                          AppIcons.google,
                          height: 25.h,
                          width: 25.w,
                        ),
                      ),
                      onPress: () {},
                    ),
                    SocialLoginWidget(
                      color: ColorManager.black,
                      child: Icon(
                        Icons.apple,
                        color: ColorManager.black,
                      ),
                      onPress: () {},
                    ),
                  ],
                ),
                20.spaceY,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Utils.popinMedText('Already have an account ?'),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.loginRoute);
                        },
                        child: Utils.popinSemBoldText('Log In',
                            color: ColorManager.primary)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
