import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';

import '../../../../app/index.dart';
import '../../../common/textform_field.dart';

class ManagementPassView extends StatelessWidget {
  const ManagementPassView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AuthViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.w),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Utils.popinMedText(
                'Enter your Passwords',
                fontSize: 24.sp,
              ),
              50.spaceY,
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
              const Spacer(),
              AppButton(
                bgColor: ColorManager.primary,
                radius: 10.r,
                onPress: () {
                  Get.toNamed(Routes.managementViewRoute);
                },
                child: Utils.popinMedText(
                  'Continue',
                  color: ColorManager.white,
                  fontSize: 18.sp,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
