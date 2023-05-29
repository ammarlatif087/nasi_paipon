import 'package:nasi_paipon/presentation/common/app_button.dart';
import 'package:nasi_paipon/presentation/view_models/auth_view_model.dart';

import '../../../app/index.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AuthViewModel>(context);
    return Column(
      children: [
        Container(
          height: kToolbarHeight,
          color: ColorManager.primary,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: ColorManager.white,
                ),
                20.spaceX,
                Utils.popinMedText('Profile',
                    color: ColorManager.white, fontSize: 20.sp)
              ],
            ),
          ),
        ),
        20.spaceY,
        CircleAvatar(
          radius: 50.r,
          backgroundImage: const AssetImage(
            AppImages.logo,
          ),
        ),
        20.spaceY,
        Utils.popinMedText('Name'),
        Utils.popinRegText('email@example.com'),
        20.spaceY,
        const Divider(),
        ListView.separated(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () => index == 0
                  ? Get.toNamed(Routes.editProfileRoute)
                  : index == 1
                      ? Get.toNamed(Routes.privacyRoute)
                      : Get.toNamed(Routes.helpCenterRoute),
              leading: Icon(viewModel.profileMenuIcon[index]),
              title: Utils.popinMedText(viewModel.profileMenu[index]),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20.sp,
              ),
            );
          },
          itemCount: 3,
          separatorBuilder: (BuildContext context, int index) {
            return 10.spaceY;
          },
        ),
        ListTile(
          onTap: () {
            _showLogoutConfirmation(context);
          },
          leading: Icon(
            Icons.logout,
            color: ColorManager.primary,
          ),
          title: Utils.popinMedText('Log out'),
        ),
      ],
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0.r),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 2.h,
                width: 40.w,
                color: ColorManager.darkGrey,
              ),
              10.spaceY,
              Utils.popinMedText('Logout',
                  color: ColorManager.primary, fontSize: 16.sp),
              const Divider(),
              20.spaceY,
              Utils.popinMedText(
                'Are you sure you want to logout?',
              ),
              20.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    width: 130.w,
                    height: 40.h,
                    child: AppButton(
                      bgColor: ColorManager.grey,
                      radius: 10.r,
                      onPress: () {
                        Get.back();
                      },
                      child: Utils.popinMedText(
                        'Cancel',
                        color: ColorManager.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 130.w,
                    height: 40.h,
                    child: AppButton(
                      bgColor: ColorManager.primary,
                      radius: 10.r,
                      onPress: () {
                        Get.back();
                      },
                      child: Utils.popinMedText(
                        'Yes,Logout',
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
