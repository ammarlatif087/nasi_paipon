import 'package:nasi_paipon/presentation/utils/enums.dart';
import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';

import '../../../app/index.dart';
import '../../common/app_button.dart';
import '../../common/pass_recovery_method.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AuthViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                  16.spaceX,
                  Utils.popinSemBoldText('Forget Password', fontSize: 16.sp),
                ],
              ),
              30.spaceY,
              Icon(
                Icons.lock,
                color: ColorManager.primary,
                size: 70.sp,
              ),
              30.spaceY,
              Utils.popinMedText(
                'Select which contact details should we use to reset your passwords',
              ),
              30.spaceY,
              PassRecWidget(
                border:
                    viewModel.recoveryType == RecoveryType.text ? true : false,
                contactType: '+92315****12',
                icon: Icons.message,
                title: 'Via Sms',
                color: viewModel.recoveryType == RecoveryType.text
                    ? ColorManager.primary
                    : ColorManager.black,
                onPress: () {
                  viewModel.selectedType(RecoveryType.text);
                },
              ),
              20.spaceY,
              PassRecWidget(
                border:
                    viewModel.recoveryType == RecoveryType.email ? true : false,
                contactType: 'email**@gmail.com',
                icon: Icons.email,
                title: 'Via Email',
                color: viewModel.recoveryType == RecoveryType.email
                    ? ColorManager.primary
                    : ColorManager.black,
                onPress: () {
                  viewModel.selectedType(RecoveryType.email);
                },
              ),
              const Spacer(),
              AppButton(
                bgColor: ColorManager.primary,
                radius: 20.r,
                onPress: () {
                  Get.toNamed(Routes.recoveryRoute);
                },
                child: Utils.popinMedText('Continue',
                    color: ColorManager.white, fontSize: 16.sp),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
