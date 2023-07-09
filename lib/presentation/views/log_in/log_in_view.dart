import 'package:nasi_paipon/app/extensions.dart';
import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/utils/enums.dart';
import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';

import '../../../app/index.dart';
import '../../common/textform_field.dart';

class LoginView extends StatelessWidget {
  const LoginView({
    super.key,
  });

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
                  'Login to your\nAccount',
                  fontSize: 24.sp,
                ),
                30.spaceY,
                Form(
                  child: Column(
                    children: [
                      //    Text(selectedUserType.toString()),
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
                      30.spaceY,
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
                        onChange: (value){
                          viewModel.onPasswordChange(value);
                        },
                        onSave: (lastValue){},
                      ),
                      30.spaceY,
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
                                onChanged: (value) =>
                                    viewModel.toggleRem(value)),
                          ),
                          10.spaceX,
                          Utils.popinMedText('Remember Me'),
                        ],
                      ),
                      30.spaceY,
                      AppButton(
                        bgColor: ColorManager.primary,
                        radius: 10.r,
                        onPress: () {
                          viewModel.profileType == ProfileType.kitchen
                              ? Get.toNamed(Routes.kitchenSectionRoute)
                              : viewModel.login();
                        },
                        child: Utils.popinMedText('Log in',
                            color: ColorManager.white, fontSize: 16.sp),
                      ),
                      30.spaceY,
                      TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.forgetPassRoute);
                        },
                        child: Utils.popinMedText('Forget your passwords?'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Utils.popinMedText('Don\'t have an account ?'),
                          TextButton(
                            onPressed: () {
                              viewModel.profileType == ProfileType.kitchen
                                  ? Get.toNamed(Routes.kitchensignUpRoute)
                                  : Get.toNamed(Routes.signUpRoute);
                            },
                            child: Utils.popinSemBoldText('Sign Up',
                                color: ColorManager.primary),
                          ),
                        ],
                      ),
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
