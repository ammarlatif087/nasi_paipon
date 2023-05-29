import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';

import '../../../app/index.dart';
import '../../common/app_button.dart';
import '../../utils/enums.dart';

class SelectUserType extends StatelessWidget {
  const SelectUserType({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AuthViewModel>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            children: [
              CircleAvatar(
                radius: 100.r,
                backgroundImage: const AssetImage(
                  AppImages.logo,
                ),
              ),
              20.spaceY,
              Utils.popinBoldText(
                StringManager.chooseCategory,
                fontSize: 24.sp,
              ),
              80.spaceY,
              AppButton(
                radius: 20.r,
                bgColor: viewModel.profileType == ProfileType.user
                    ? ColorManager.primary
                    : ColorManager.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: viewModel.profileType == ProfileType.user,
                      child: Icon(
                        Icons.check_circle_outline,
                        size: 20.sp,
                        color: ColorManager.white,
                      ),
                    ),
                    10.spaceX,
                    Utils.popinMedText('User',
                        color: viewModel.profileType == ProfileType.user
                            ? ColorManager.white
                            : ColorManager.black,
                        fontSize: 16.sp),
                  ],
                ),
                onPress: () {
                  viewModel.selectedUser(ProfileType.user);
                },
              ),
              20.spaceY,
              AppButton(
                radius: 20.r,
                bgColor: viewModel.profileType == ProfileType.agent
                    ? ColorManager.primary
                    : ColorManager.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: viewModel.profileType == ProfileType.agent,
                      child: Icon(
                        Icons.check_circle_outline,
                        color: Colors.white,
                        size: 20.r,
                      ),
                    ),
                    10.spaceX,
                    Utils.popinMedText('Agent',
                        color: viewModel.profileType == ProfileType.agent
                            ? ColorManager.white
                            : ColorManager.black,
                        fontSize: 16.sp),
                  ],
                ),
                onPress: () {
                  viewModel.selectedUser(ProfileType.agent);
                },
              ),
              20.spaceY,
              AppButton(
                radius: 20.r,
                bgColor: viewModel.profileType == ProfileType.kitchen
                    ? ColorManager.primary
                    : ColorManager.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: viewModel.profileType == ProfileType.kitchen,
                      child: Icon(
                        Icons.check_circle_outline,
                        color: Colors.white,
                        size: 20.r,
                      ),
                    ),
                    10.spaceX,
                    Utils.popinMedText('Kitchen',
                        color: viewModel.profileType == ProfileType.kitchen
                            ? ColorManager.white
                            : ColorManager.black,
                        fontSize: 16.sp),
                  ],
                ),
                onPress: () {
                  viewModel.selectedUser(ProfileType.kitchen);
                },
              ),
              const Spacer(),
              AppButton(
                radius: 10.r,
                bgColor: ColorManager.primary,
                child: Utils.popinMedText('Done',
                    color: ColorManager.white, fontSize: 16.sp),
                onPress: () {
                  viewModel.profileType == ProfileType.kitchen
                      ? Get.toNamed(
                          Routes.kitchenSectionRoute,
                        )
                      : Get.toNamed(
                          Routes.loginRoute,
                        );
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
